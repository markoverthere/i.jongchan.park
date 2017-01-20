#ActiveX와 기술적 부채

###ActiveX란 무엇인가?
- 마이크로소프트의 COM(컴포넌트 객체 모델)과 OLE(객체 연결 삽입) 기술을 이용한 기술명이다.(출처:Wikipedia) 우리가 일반적으로 화를 내는 대상인 브라우저에서 작동하는 프로그램은 정확히 말하면 'ActiveX Controls'라고 불러야 한다.
- 왜 욕을 먹는가? : 윈도 폴더 내부에 파일을 만들거나 레지스트리를 수정하는 등... 황당할 정도로 컴퓨터를 마음대로 주무를 수 있다. 좌우지간 양도된 권한이 과도하다. 사용자라도 충분히 숙련된 사람이 아니면 건드리는 것이 권장되지 않는 영역까지 컨트롤할 수 있다. 개발자에게는 전가의 보도가 쥐어진 셈이지만, 사용자에게는 아주 위험한 물건이다.

###국내에 공인인증서가 생긴 배경과 그 위험성은?
90년대 말까지 미국은 해외로 수출되는 MS IE에 40bit이상의 보안접속을 하지 못하도록 막고 있었다. 당시 안전하게 금융거래를 하기 위해서는 128bit의 보안 접속이 필요했는데, 국내는 거의 모든 사용자가 MS Windows를 사용하고 있었다.

이에 안전한 인터넷 뱅킹을 구현하기 위해 독자적으로 SEED라는 암호화 방식을 채택, 개발한 것이 공인인증서이다. 이 방식은 크게 두 가지 부분에서 비판을 할 수 있는데, 하나는 배포의 방식이 ActiveX라는 점, 또 다른 하나는 공인인증서가 파일 시스템 상에서 아무런 보호도 받을 수 없는 일반 폴더에 저장된다는 점이다. 문제점을 하나씩 짚어 보겠다.

####배포 방식
ActiveX는 MS마저도 버리고 가고 싶어하는 흑역사 기술이다. ActiveX control은 윈도 폴더 내부에 파일을 만들거나 레지스트리를 수정하는 등... 황당할 정도로 컴퓨터를 마음대로 주무를 수 있다.

게다가 더 큰 문제는 결제 과정에서 너무 자주 설치를 요구하다 보니, 사람들이 익숙해져서 별다른 거부감 없이 단지 다음 페이지로 진행하기 위해 무분별하게 설치를 허용한다는 점이다. 이것은 보안 의식이 희미한 일반 사용자들에게 아주 해로운 영향을 끼친다. 심지어 가끔 PC가 아무 이유 없이 뻗거나 이상한 행동을 하는데도, 그저 그러려니 하고 쉽게쉽게 포맷해버리는 습관까지 만드는 웃지 못할 촌극까지 나온다.


####저장위치
대칭키 방식의 공인인증서는 일단 탈취되고 나면 아주 취약하다. 

일반적으로 암호화된 인증서는 접근이 제한되거나 숨겨놓는 등, 쉽게 접근할 수 없도록 하는 것이 상식이다. 각 운영체제에서 공식적으로 지원하는 표준 암호화 방식은 모두 이와 같은 조치를 받는다.

그러나 ActiveX를 이용한 공인인증서는 국내에서만 표준이다. 그리고 우리가 쓰는 OS는 [괴랄한 실패작](https://namu.wiki/w/티맥스%20윈도우) 하나를 제외하고는 모두 국산이 아니다. 경천동지할 노릇이다. 개인 계정의 개념도 희미하고 가족 PC는 귀찮다는 이유로 아예 암호를 안 거는 일도 많은 나라에서, 그냥 'NPKI'라고 검색하면 버젓이 접근할 수 있는 폴더에 공인인증서를 넣어놓는 것이다.


####책임소재의 문제

혹자는 공인인증서 파일 관리만 잘 하면 아주 안전한 방식이라고 옹호하지만, 이건 그냥 대한민국 모든 국민의 집을 벙커나 쉘터로 만들고 국군을 해산시키자는 것이나 다름없다. 각자 군사시설 수준의 보안을 갖추고 사격 훈련을 받으면, 그야 당연히 안전할 것이다. **하지만 그게 사는 건가?**

국가에서 지정하는 표준이라면, 대다수 국민들의 컴퓨터 사용 실태를 반영해야 하는 것이 당연하다. USB 한 번도 안 잃어버려 본 사람이 몇이나 될까? 아주 복잡한 암호로 자신의 컴퓨터를 잠그는 사람은 또 얼마나 될까? 국가 표준의 문턱을 아주 높게 설정해 놓고, 잘만 따라오면 이것이 제일 안전하다는 식은 곤란하다. 대다수의 사람들이 잘 못따라가면 그건 정책을 잘못 세운 것이지, 개인이 잘못한 것이 아니다.

###기술적 부채 (Technical Debt)에 대해 알아보기
기술적 부채란 개발 당시의 여러 가지 사정에 의해 방치된 문제점의 불씨들이 언젠가는 빚처럼 돌아온다고 해서 만들어진 용어이다.
원인은 여러가지일 수 있다. 개발자가 게을러서일 수도 있고, 예산이나 일정이 충분하지 않은 경우, 개발하면서 계속해서 기획 수정이 일어나는 경우 등등... 결국 이렇게 짜여진 코드는 문제점을 내포하고 있고, 환경이 바뀌거나 신기능 등을 추가하려고 할 때 업무량을 눈더미처럼 불려서 돌려준다. 

한 번 이렇게 꼬인 프로젝트는 쉽게 회생할 수 없어서 고객 불편이 늘어나고, 늘어난 불편 때문에 매출은 감소하고, 감소한 매출 때문에 제품의 유지보수 리소스는 줄어들고, 기술적 부채는 다시 늘어나는 악순환에 빠질 위험이 생긴다. 즉, 첫 단추부터 잘 꿰어야 한다는 것.

###위 내용을 조사하면서 느낀점
한국의 ActiveX Control 문제는 국가 수준의 기술적 부채에 해당한다. 심지어 국가에서 인증한 표준이라는 것이 문제를 더욱 부추긴다. 일반적인 경쟁 상태에서 이런 기술적 부채를 끌어안은, 그러니까 쉽게 말해 거지같은 프로덕트를 내는 기업은 자연스럽게 도태되게 마련이다. 그런데 이 망할 건 표준이라 도태될 수가 없다! 국민들은 인터넷 뱅킹을 하려면 울며 겨자먹기로 불편함을 감수해야만 하는 것. (그나마 최근에는 모바일 뱅킹이 문제를 조금씩 완화해주고 있는 상황이다. 모바일 뱅킹이 인터넷 뱅킹을 도태시킬 판이다.)

표준을 전환하는 데 비용이 드는 것은 맞다. 하지만 ActiveX때문에 일어나는 낭비도 잘 생각해 봐야 한다. 충동구매를 하려 했던 사용자가 완강히 결제를 거부하는 ActiveX시스템을 만나면 방해에도 불구하고 불굴의 의지로 이겨내며 돈을 쓰려고 들까? 아니면 자신의 소비 행태에 대해 다시 한 번 생각해보는 시간을 가질까? 한국의 금융사들이 ActiveX때문에 잃은 수수료 시장의 규모를 조사해보면 꽤 재밌을 것 같다. 빨리 전환하는 게 답이라고 생각한다.