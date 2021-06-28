import 'package:flutter/cupertino.dart';

import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(storyTitle: '', choice1: '시작하기', choice2: ''), //1

    Story(
        storyTitle: '당신은 판타지 소설 속의 주인공입니다. 어떤 타입인가요?',
        choice1: 'A. 능력치의 기복이 심해도 개성이 강한 타입',
        choice2: 'B. 전체적으로 능력치가 준수하지만, 개성이 없는 타입'), //1
    Story(
        storyTitle:
            '사냥을 하러 깊은 숲속에 들어간 당신, 길을 잃고 어두워진 밤에 갑작스레 주변에서 기척이 느껴지네요. 어떻게 하시겠습니까?',
        choice1: 'A. 침착하게 어디에서 소리가 들리는지 파악한다.',
        choice2: 'B. 무기를 꽉 쥐고 무엇인가 가까이 다가오면 휘두르고 본다.'), //2
    Story(
        storyTitle: '누군가의 신음소리가 들려 가까이 가보니 상처가 심각해 보이는 사람이 보입니다. 어떻게 해야 할까요?',
        choice1: 'A. "사람 살려!"라고 크게 소리를 질러 다른 사람의 도움을 구한다.',
        choice2: 'B. 기억이 제대로 나지 않지만, 분명 치유 마법을 배웠던 것 같다. 더듬거리며 마법을 사용해본다.'), //3
    Story(
        storyTitle: '더욱 깊은 곳에 사냥감이 있습니다. 당신을 발견하고 공격해오네요!',
        choice1: 'A. 우선 적의 패턴 파악이 우선이다. 우직하게 버티면서 약점을 찾을 시간을 번다.',
        choice2: 'B. 공격과 회피로 이길 수 있을지 견적을 재면서 파티의 능력 역량과 비교한다.'), //4
    Story(
        storyTitle: '치유 마법이 효과가 없습니다. 상처 부위를 보니 뱀에게 물린 것 같습니다. 어떻게 대처하시겠습니까?',
        choice1: 'A. 상처 부위에 입을 대고 독을 빨아낸다.',
        choice2: 'B. 이럴 때를 대비해 준비해둔 약초가 있으니 해독제를 만들어 먹인다.'), //5
    Story(
        storyTitle: '아침이 밝았습니다. 모험을 떠나기 위한 준비를 해야 하는데, 어떤 것부터 챙기시겠나요?',
        choice1: 'A. 방어구를 먼저 챙기자. 조금이라도 더 몬스터의 공격에 버티는 게 중요하다.',
        choice2: 'B. 공격이 최선의 방어! 전투 중에 무기가 부서지지 않도록 조심해야지.'), //6
    Story(
        storyTitle: '모험을 떠나기 전에 어떻게 시작할 것인가요?',
        choice1: 'A. 정보력이 가장 중요해! 누군가에게 조언을 듣고 시작합니다.',
        choice2: 'B. 정보 따윈 필요 없어! 내가 직접 개척하는 모험이 진짜야.'), //7
    Story(
        storyTitle: '도중에 강이 있어 목표 지점으로 갈 수 없는 상황입니다. 당신은 어떻게 건너갈 건가요?',
        choice1: 'A. 육체를 단련하는 것이 중요하지! 수영으로 건너간다.',
        choice2: 'B. 도구를 써야지! 나무를 찾아 뗏목을 만들어 건너간다.'), //8
    Story(
        storyTitle: '강력한 가디언이 눈앞에 나타났습니다. 어떤 식으로 무찌를 예정인가요?',
        choice1: 'A. 정면승부! 도망따윈 치지 않습니다.',
        choice2: 'B. 먼 곳에서 안전하게 공격합니다.'), //9
    Story(
        storyTitle: '겨우 몬스터를 쓰러트리고 보물 상자가 나왔습니다. 상자 안에 든 것은 무엇인가요?',
        choice1: 'A. 강력한 무기와 방어구',
        choice2: 'B. 고대의 지혜가 담겨 있는 서책'), //10
    Story(
        storyTitle:
            '마을로 돌아가던 중에 갑작스레 몬스터 무리와 만났습니다. 하지만 보유한 무기의 내구도가 0이라서 전투를 벌일 수가 없군요. 당신의 선택은?',
        choice1: 'A. 물러서지 않는다! 동료를 믿고 끝까지 버틴다.',
        choice2: 'B. 주변을 둘러보며 무기로 사용할 수 있는 무언가를 잡아든다.'), //11
    Story(
        storyTitle: '당신에게 있어 철천지 원수에게 복수할 기회가 왔습니다. 어떤 식으로 복수할 건가요?',
        choice1: 'A. 서서히 고통을 주면서 상대의 괴로움을 즐긴다.',
        choice2: 'B. 그간 쌓였던 원한을 풀기 위해 한 번에 박살 내버린다.'), //12
    Story(
        storyTitle: '당신은 특수부대 일원입니다. 어떤 역할을 맡았나요?',
        choice1: 'A. 적의 심장으로 진입하여 정신없이 교란한다!',
        choice2: 'B. 포탄으로 적을 단숨에 몰살시킨다!'), //13
    Story(
        storyTitle: '인생은 한방이다?',
        choice1: 'A. 맞아! 인생은 한 방으로 결정되는 것이지!',
        choice2: 'B. 무슨 소리야? 인생은 하나 둘씩 쌓아가면서 걷는 과정이야!'), //14
    Story(
        storyTitle: '무기를 선택할 때 기준은?',
        choice1: 'A. 아름다운 외형을 보고 선택한다!',
        choice2: 'B. 외형이 중요해? 당연히 성능 아니야?'), //15
    Story(
        storyTitle: '창천에 도착하여 탕수육을 주문했습니다. 당신은 어떻게 드실 건가요?',
        choice1: 'A. 찍·먹이지!',
        choice2: 'B. 부·먹이지!'), //16
    Story(
        storyTitle: '당신의 공부 스타일은?',
        choice1: 'A. 다다익선! 다양한 자료를 찾아보면서 한다.',
        choice2: 'B. 많은 것은 필요없어! 하나에만 전념한다.'), //17
    Story(
        storyTitle: '강력한 소환수, 강력한 마법. 당신은 무엇을 원하시나요?',
        choice1: 'A. 강력한 소환수!',
        choice2: 'B. 강력한 마법!'), //18
    Story(
        storyTitle: '운과 실력 중 당신은 무엇이 더 중요하다고 생각하나요?',
        choice1: 'A. 당연히 운이지! 운빨개망겜!',
        choice2: 'B. 당연히 실력이지! 실력갓흥겜!'), //19
    Story(
        storyTitle: '당신은 주로 솔로플레이를 하시나요?',
        choice1: 'A. 인생은 혼자지!',
        choice2: 'B. 혼자는 외로워!'), //20
    Story(
        storyTitle: '당신은 아이언 맨을 좋아하시나요?',
        choice1: 'A. 딱히?',
        choice2: 'B. 무조건이지~'), //21
    Story(
        storyTitle: '동료가 죽을 위기에 처했습니다. 당신은 어떻게 하실건가요?',
        choice1: 'A. 내가 지켜줄게! 동료 곁에서 떠나지 않고 자리를 지킨다.',
        choice2: 'B. 내가 구해줄게! 동료를 구하기 위해 지원을 부른다.'), //22
    Story(storyTitle: '당신의 캐릭터의 성별은?', choice1: 'A. 남자', choice2: 'B. 여자'), //23
    Story(storyTitle: '당신은 캐릭터의 성별은?', choice1: 'A. 남자', choice2: 'B. 여자'), //24
    Story(
        storyTitle: '당신은 무협 소설 속의 주인공입니다. 어떤 타입인가요?',
        choice1: 'A. 무협하면 기를 써야지!',
        choice2: 'B. 무협하면 무기술이지!'), //25
    Story(
        storyTitle: '당신이 생각하는 무기의 아름다움의 기준은?',
        choice1: 'A. 묵직한 검',
        choice2: 'B. 날렵한 검'), //26
    Story(
        storyTitle: '당신의 오른 손에는 흑염룡이 있습니다. 이를 적극 활용하시나요?',
        choice1: 'A. 아니. 내 오른 손은 너무 위험해...',
        choice2: 'B. 당연하지!'), //27
    Story(
        storyTitle: '당신이 추구하는 전투는? ',
        choice1: 'A. 당연히 파괴!',
        choice2: 'B. 당연히 암살!'), //28
    Story(
        storyTitle: '',
        choice1: '당신은 직업은 워로드 입니다!',
        choice2: '다시 시작하기'), //29워로드
    Story(storyTitle: '', choice1: '당신은 직업은 홀리나이트 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 디스트로이어 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 버서커 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 블레이드 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 데모닉 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 리퍼 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 서머너 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 소서리스 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 아르카나 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 바드 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 호크아이 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 데빌헌터 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 건슬링어 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 블래스터 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 스카우터 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 인파이터 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 배틀마스터 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 스트라이커 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 기공사 입니다!', choice2: '다시 시작하기'),
    Story(storyTitle: '', choice1: '당신은 직업은 창술사 입니다!', choice2: '다시 시작하기'),
  ];

  int _storyNumber = 0;

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0 && choiceNumber == 1) {
      _storyNumber = 1;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      _storyNumber = 3;
    } else if (_storyNumber == 2 && choiceNumber == 1) {
      _storyNumber = 3;
    } else if (_storyNumber == 2 && choiceNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 && choiceNumber == 1) {
      _storyNumber = 6;
    } else if (_storyNumber == 3 && choiceNumber == 2) {
      _storyNumber = 5;
    } else if (_storyNumber == 4 && choiceNumber == 1) {
      _storyNumber = 6;
    } else if (_storyNumber == 4 && choiceNumber == 2) {
      _storyNumber = 5;
    } else if (_storyNumber == 5 && choiceNumber == 1) {
      _storyNumber = 7;
    } else if (_storyNumber == 5 && choiceNumber == 2) {
      _storyNumber = 6;
    } else if (_storyNumber == 6 && choiceNumber == 1) {
      _storyNumber = 7;
    } else if (_storyNumber == 6 && choiceNumber == 2) {
      _storyNumber = 8;
    } else if (_storyNumber == 7 && choiceNumber == 1) {
      _storyNumber = 9;
    } else if (_storyNumber == 7 && choiceNumber == 2) {
      _storyNumber = 8;
    } else if (_storyNumber == 8 && choiceNumber == 1) {
      _storyNumber = 9;
    } else if (_storyNumber == 8 && choiceNumber == 2) {
      _storyNumber = 11;
    } else if (_storyNumber == 9 && choiceNumber == 1) {
      _storyNumber = 11;
    } else if (_storyNumber == 9 && choiceNumber == 2) {
      _storyNumber = 10;
    } else if (_storyNumber == 10 && choiceNumber == 1) {
      _storyNumber = 13;
    } else if (_storyNumber == 10 && choiceNumber == 2) {
      _storyNumber = 12;
    } else if (_storyNumber == 11 && choiceNumber == 1) {
      _storyNumber = 22;
    } else if (_storyNumber == 11 && choiceNumber == 2) {
      _storyNumber = 14;
    } else if (_storyNumber == 12 && choiceNumber == 1) {
      _storyNumber = 18;
    } else if (_storyNumber == 12 && choiceNumber == 2) {
      _storyNumber = 19;
    } else if (_storyNumber == 13 && choiceNumber == 1) {
      _storyNumber = 21;
    } else if (_storyNumber == 13 && choiceNumber == 2) {
      _storyNumber = 20;
    } else if (_storyNumber == 14 && choiceNumber == 1) {
      _storyNumber = 31;
      classNumber = 31;
    } else if (_storyNumber == 14 && choiceNumber == 2) {
      _storyNumber = 15;
    } else if (_storyNumber == 15 && choiceNumber == 1) {
      _storyNumber = 26;
    } else if (_storyNumber == 15 && choiceNumber == 2) {
      _storyNumber = 16;
    } else if (_storyNumber == 16 && choiceNumber == 1) {
      _storyNumber = 17;
    } else if (_storyNumber == 16 && choiceNumber == 2) {
      _storyNumber = 25;
    } else if (_storyNumber == 17 && choiceNumber == 1) {
      _storyNumber = 24;
    } else if (_storyNumber == 17 && choiceNumber == 2) {
      _storyNumber = 45;
      classNumber = 45;
    } else if (_storyNumber == 18 && choiceNumber == 1) {
      _storyNumber = 36;
      classNumber = 36;
    } else if (_storyNumber == 18 && choiceNumber == 2) {
      _storyNumber = 37;
      classNumber = 37;
    } else if (_storyNumber == 19 && choiceNumber == 1) {
      _storyNumber = 38;
      classNumber = 38;
    } else if (_storyNumber == 19 && choiceNumber == 2) {
      _storyNumber = 39;
      classNumber = 39;
    } else if (_storyNumber == 20 && choiceNumber == 1) {
      _storyNumber = 23;
    } else if (_storyNumber == 20 && choiceNumber == 2) {
      _storyNumber = 40;
      classNumber = 40;
    } else if (_storyNumber == 21 && choiceNumber == 1) {
      _storyNumber = 43;
      classNumber = 43;
    } else if (_storyNumber == 21 && choiceNumber == 2) {
      _storyNumber = 44;
      classNumber = 44;
    } else if (_storyNumber == 22 && choiceNumber == 1) {
      _storyNumber = 29;
      classNumber = 29;
    } else if (_storyNumber == 22 && choiceNumber == 2) {
      _storyNumber = 30;
      classNumber = 30;
    } else if (_storyNumber == 23 && choiceNumber == 1) {
      _storyNumber = 41;
      classNumber = 41;
    } else if (_storyNumber == 23 && choiceNumber == 2) {
      _storyNumber = 42;
      classNumber = 42;
    } else if (_storyNumber == 24 && choiceNumber == 1) {
      _storyNumber = 46;
      classNumber = 46;
    } else if (_storyNumber == 24 && choiceNumber == 2) {
      _storyNumber = 47;
      classNumber = 47;
    } else if (_storyNumber == 25 && choiceNumber == 1) {
      _storyNumber = 48;
      classNumber = 48;
    } else if (_storyNumber == 25 && choiceNumber == 2) {
      _storyNumber = 49;
      classNumber = 49;
    } else if (_storyNumber == 26 && choiceNumber == 1) {
      _storyNumber = 32;
      classNumber = 32;
    } else if (_storyNumber == 26 && choiceNumber == 2) {
      _storyNumber = 27;
    } else if (_storyNumber == 27 && choiceNumber == 1) {
      _storyNumber = 33;
      classNumber = 33;
    } else if (_storyNumber == 27 && choiceNumber == 2) {
      _storyNumber = 28;
    } else if (_storyNumber == 28 && choiceNumber == 1) {
      _storyNumber = 34;
      classNumber = 34;
    } else if (_storyNumber == 28 && choiceNumber == 2) {
      _storyNumber = 35;
      classNumber = 35;
    } else if (_storyNumber >= 29) {
      _storyNumber = 0;
      classNumber = 0;
    }
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber > 0) {
      return true;
    } else {
      return false;
    }
  }

  int classNumber = 0;

  Widget answer() {
    if (_storyNumber >= 29 || _storyNumber == 0) {
      return Image(
        image: AssetImage('images/background$classNumber.jpg'),
      );
    } else {
      return Text(
        getStory(),
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
    }
  }
}
