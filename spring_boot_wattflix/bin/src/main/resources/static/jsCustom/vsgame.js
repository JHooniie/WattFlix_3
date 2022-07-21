/**
 * 
 */
 
 if(!window['vsgame']) {
	vsgame = {};
	( function (_O) {
    _O.init = () => {
      const v = _O.Vars;
      v.curRound = 16;
      v.curStage = 0;
      v.gameHistory = {
        '16': [],
        '8': [],
        '4': [],
        '2': [],
        '1': []
      };
      v.lists = _O.Ctrl.getLists();
      _O.Ctrl.prevCancelOnOff();
    };
    _O.start = () => {
      _O.init();
      _O.Ctrl.gameNewStart.bind(_O.Ctrl)();
    };
    _O.Vars = {
      lists:null,
      curRound: 0,
      curStage: 0,
      maxRound: 40,
      gameHistory: null
    };
    _O.Ctrl = {
      getLists() {
        return [
          {
            name: '그린북',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000081/81532/81532_1000.jpg',
            selected: false
          },
          {
            name: '가버나움',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000081/81558/81558_1000.jpg',
            selected: false
          },
          {
            name: '원더',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80428/80428_1000.jpg',
            selected: false
          },
          {
            name: '쉰들러 리스트',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000081/81568/81568_1000.jpg',
            selected: false
          },
          {
            name: '메트릭스',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85541/85541_1000.jpg',
            selected: false
          },
          {
            name: '쇼생크 탈출',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78753/78753_1000.jpg',
            selected: false
          },
          {
            name: '클래식',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000006/6942/6942_1000.jpg',
            selected: false
          },
          {
            name: '백 투더 퓨처',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78540/78540_1000.jpg',
            selected: false
          },
          {
            name: '죽은 시인의 사회',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000061/61436/61436_1000.jpg',
            selected: false
          },
          {
            name: '다크나이트 라이즈',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000076/76417/76417_1000.jpg',
            selected: false
          },
          {
            name: '마녀',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80789/80789_1000.jpg',
            selected: false
          },
          {
            name: '범죄도시 2',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85813/85813_1000.jpg',
            selected: false
          },
          {
            name: '씽2게더',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84780/84780_1000.jpg',
            selected: false
          },
          {
            name: '주만지-새로운 세계',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79927/79927_1000.jpg',
            selected: false
          },
          {
            name: '쥬라기 월드 - 도미니언',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85689/85689_1000.jpg',
            selected: false
          },
          {
            name: '탑건 - 매버릭',
            imgSrc: 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82120/82120_1000.jpg',
            selected: false
          }
    
        ];
      },
      rndLists(arr) { //배열 랜덤 섞음
        return arr.map((n) => { return [Math.random(), n] }).sort().map((n) => {  return n[1] });//n[1].selected = false;
      },
      selectedLists(arr) {
        return arr.filter((n) => n.selected === true);
      },
      gameNewStart() {
        const v = _O.Vars;
        v.gameHistory[v.curRound.toString()] = this.rndLists(v.lists);
        _O.Html.set.bind(_O.Html)();
      },
      copyObj(obj) { //Deep Copy
        let copy = {};
        for (let attr in obj) {
          if (obj.hasOwnProperty(attr)) {
            copy[attr] = obj[attr];
          }
        }
        copy.selected = false;
        return copy;
      },
      nextRound() {
        const v = _O.Vars;
        if(v.curRound <= 1) return;
        v.lists = _O.Ctrl.selectedLists(v.gameHistory[v.curRound.toString()]).map((n) => _O.Ctrl.copyObj(n));
        if(v.curRound > 1) v.curRound /= 2;
        v.curStage = 0;
        v.gameHistory[v.curRound.toString()] = this.rndLists(v.lists);
        // console.log('v.lists::',v.lists, 'v.gameHistory::',v.gameHistory);
        _O.Html.setRoundTitle();
      },
      prevCancelOnOff() {
        const footerObj = document.getElementById('footer');
        if(_O.Vars.curRound === _O.Vars.maxRound) {
          if(_O.Vars.curRound > 1 && _O.Vars.curStage > 0) footerObj.className = 'footer';
          else footerObj.className = 'footer soff';
        } else {
          if(_O.Vars.curRound > 1) footerObj.className = 'footer';
          else footerObj.className = 'footer soff';
        }
      }
    };
    _O.Event = {
      clickItem(obj) {
        const v = _O.Vars;
        if(v.curRound === 1) return;
        const idx = obj.id.split('_')[1];
        v.gameHistory[v.curRound.toString()][idx].selected = true;
        if(v.curStage < v.curRound/2) v.curStage++;
        if(v.curStage === v.curRound/2) _O.Ctrl.nextRound();
        _O.Html.setItem();
        _O.Ctrl.prevCancelOnOff();
      },
      overItem(obj) {
        const objs = document.querySelectorAll('#list_ideal li a[hover="true"]');
        objs.forEach((itm) => itm.setAttribute('hover', 'false'));
        if(obj.getAttribute('hover') === 'true') return;
        obj.setAttribute('hover', 'true');
      },
      outItem(obj) {
        if(obj.getAttribute('hover') === 'false') return;
        obj.setAttribute('hover', 'false');
      },
      clickCancel() {
        _O.start();
      },
      clickPrev() {
        const v = _O.Vars;
        if(v.curStage > 0) v.curStage--;
        else {
          v.gameHistory[v.curRound.toString()] = [];
          if(v.curRound < _O.Vars.maxRound) {
            v.curRound *= 2;
            v.curStage = v.curRound / 2 - 1;
          }
          _O.Html.setRoundTitle();
          v.lists = v.gameHistory[v.curRound.toString()];
        }

        v.lists[v.curStage * 2].selected = false;
        v.lists[v.curStage * 2 + 1].selected = false;
        _O.Html.setItem();
        _O.Ctrl.prevCancelOnOff();
      }
    };
    _O.Html = {
      set() {
        this.setRoundTitle();
        this.setContent();
      },
      setHistory() {
        const tObj = document.getElementById('modal');
        let key, roundDiv, imgObj, roundTitleDiv, roundImgWrapDiv;
        let historyTitleDiv = document.createElement('DIV');
        historyTitleDiv.className = 'tit';
        historyTitleDiv.innerText = '히스토리';
        tObj.appendChild(historyTitleDiv);
        let wrapDiv = document.createElement('DIV');
        wrapDiv.className = 'history_box';
        for(key in _O.Vars.gameHistory) {
          roundDiv = document.createElement('DIV');
          roundDiv.className = 'round';
          roundTitleDiv = document.createElement('h5');
          roundTitleDiv.innerText = (key === '1' ? `회원님의 최애 영화` : `${key}강`);
          roundDiv.appendChild(roundTitleDiv);
          roundImgWrapDiv = document.createElement('DIV');
          _O.Vars.gameHistory[key].forEach((itm) => {
            imgObj = document.createElement('IMG');
            imgObj.setAttribute('src', itm.imgSrc);
            imgObj.className = `history_item ${itm.selected ? '' : (key !== '1' ? 'dim' : '')}`;
            roundImgWrapDiv.appendChild(imgObj);
          });
          roundDiv.appendChild(roundImgWrapDiv);
          wrapDiv.appendChild(roundDiv);
        }
        tObj.appendChild(wrapDiv);
      },
      setRoundTitle() {
        if(_O.Vars.curRound > 1) document.getElementById('roundTitle').innerText = `${_O.Vars.curRound}강 선택`;
        else document.getElementById('roundTitle').innerText = `축하합니다. 회원님의 최애 영화가 나왔습니다.`;
      },
      setItem() {
        const s = _O.Html.getItem();
        const tObj = document.getElementById('list_ideal');
        if(!tObj) return;
        tObj.innerHTML = s;
        if(_O.Vars.curRound === 1) _O.Html.setHistory();
      },
      getItem() {
        let s = '', i = _O.Vars.curStage * 2, length = i + (_O.Vars.curRound > 1 ? 2 : _O.Vars.curRound);
        for(i; i < length && length <= _O.Vars.curRound; i++) {
          s += `
          <li>
            <a class="item ${_O.Vars.curRound === 1 ? 'final' : ''}" id="item_${i}" hover="false" href="javascript:void(0);" onclick="vsgame.Event.clickItem(this);" onmouseover="vsgame.Event.overItem(this);" onmouseout="vsgame.Event.outItem(this);">
              <span class="thumb"><img src="${_O.Vars.gameHistory[_O.Vars.curRound.toString()][i]['imgSrc']}" alt="여자 연예인 사진"></span>
              <strong> ${_O.Vars.gameHistory[_O.Vars.curRound.toString()][i]['name']}</strong>
            </a>
          </li>
          `;
          if(_O.Vars.curRound === 1) {
            s += `
            <li id="history">
              <a class="modal final" id="modal" href="javascript:void(0);"></a>
            </li>
            `;
          }
        }
        return s;
      },
      setContent() {
        const tObj = document.getElementById('content');
        tObj.className = 'content in_game';
        let s = `
          <ul class="list_ideal" id="list_ideal">
          ${this.getItem()}
          </ul>
        `;
        tObj.innerHTML = s;
      }
    }
	}) (vsgame);
}