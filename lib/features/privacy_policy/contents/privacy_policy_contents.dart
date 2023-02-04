abstract class CustomEnum implements Enum {
  CustomEnum({required this.text});
  final String text;
}

///プライバシーポリシー

enum PrivacyPolicyLabel implements CustomEnum {
  difinition(text: '個人情報の定義'),
  getMethod(text: '個人情報の取得方法'),
  objective(text: '個人情報の利用目的'),
  objectiveChange(text: '利用目的の変更'),
  thirdPartyProvision(text: '個人情報の第三者提供'),
  disclosure(text: '個人情報の開示'),
  removeAndCorrection(text: '個人情報の訂正・削除'),
  change(text: 'プライバシーポリシーの変更'),
  inquiry(text: 'お問い合わせ'),
  establishment(text: '制定・施行・改訂');

  const PrivacyPolicyLabel({required this.text});

  @override
  final String text;
}

const List<String> privacyPolicyForeword = [
  '本アプリサービス運営者(以下運営者)は、以下のとおり個人情報保護方針を定め、個人情報保護の重要性の認識と取組みを徹底することにより、個人情報の保護を推進致します。',
];

Map<String, List<String>> privacyPolicyContents = {
  PrivacyPolicyLabel.difinition.text: [
    '本プライバシーポリシーにおける、「個人情報」とは、個人情報の保護に関する法律規定される「個人情報」及び本サービスの利用に係るパスワードを指します。'
  ],
  PrivacyPolicyLabel.getMethod.text: [
    '運営者は、利用目的の達成に必要な範囲で、個人情報を適正に取得し、不正の手段により取得することはありません。',
    '本アプリでは、利用状況解析のためにGoogle Firebase Analyticsを使用する場合がございますが、個人を特定するためなどには使用しておりません。取得する情報、利用目的、第三者への提供等の詳細につきましては、以下のプライバシーポリシーのリンクよりご確認ください。',
    'Firebase Analytics（Google Inc.）',
    'https://policies.google.com/privacy?hl=ja%EF%BB%BF'
  ],
  PrivacyPolicyLabel.objective.text: [
    '本サービスが個人情報を収集および利用する目的は、以下のとおりです。',
    '1.本サービスの提供および運営のため'
        '2.お客様からのお問い合わせに回答するため（ご本人確認を行うことを含みます）',
    '3.本サービスの新機能、更新情報、キャンペーンなどの案内メールを送付するため',
    '4.メンテナンスおよび重要なお知らせなど必要に応じたご連絡のため',
    '5.利用規約に違反したお客様や、不正・不当な目的でサービスを利用しようとするユーザーの特定をし、ご利用をお断りするため',
    '6.お客様にご自身の登録情報の閲覧や変更、削除、ご利用状況の閲覧を行なっていただくため'
        '7.上記利用目的に付随する目的'
  ],
  PrivacyPolicyLabel.objectiveChange.text: [
    '1.本サービスは、利用目的が変更前と関連性を有すると合理的に認められる場合に限り、個人情報の利用目的を変更するものとします。',
    '2.利用目的の変更を行った場合には、変更後の目的について、本サービス所定の方法により、お客様に通知し、または本ウェブサイト上に公表するものとします。',
  ],
  PrivacyPolicyLabel.thirdPartyProvision.text: [
    '運営者は、法令に定められた場合を除き、あらかじめ利用者の同意を得ないで、第三者（日本国外にあるも者を含みます。）に個人情報を提供しません。'
  ],
  PrivacyPolicyLabel.disclosure.text: [
    '1.本サービスはお客様本人から個人情報の開示を求められたときは、本サービスが別途定めた手続きに従って、開示を請求することができます。開示することにより次のいずれかに該当する場合は、その全部または一部を開示しないこともあります。',
    ' (a)本人または第三者の生命、身体、財産その他の権利利益を害するおそれがある場合',
    ' (b)その他法令に違反することとなる場合',
    '2.前項の定めにかかわらず、履歴情報および特性情報などの個人情報以外の情報については原則として開示致しません。',
  ],
  PrivacyPolicyLabel.removeAndCorrection.text: [
    '本サービスは、本人から個人情報が利用目的の範囲を超えて取り扱われているという理由により、または不正の手段により取得されたものであるという理由により、その利用の停止または消去（以下、「利用停止等」といいます）を求められた場合には、遅滞なく必要な調査を行います',
    '前項の調査結果に基づき、その請求に応じる必要があると判断した場合には、遅滞なく、当該個人情報の利用停止等を行います。',
    '本サービスは前項の規定に基づき利用停止等を行った場合、または利用停止等を行わない旨の決定をしたときは、遅滞なく、これをお客様に通知します。',
    '前２項にかかわらず、利用停止等に多額の費用を有する場合、その他利用停止等を行うことが困難な場合であって、お客様の権利利益を保護するために必要なこれに代わる措置を取れる場合は、この代替策を講じるものとします。'
  ],
  PrivacyPolicyLabel.change.text: [
    '本ポリシーの内容は、法令その他本ポリシーに別段の定めのある事項を除いて、お客様に通知することなく、変更することができるものとします。',
    '本サービスが別途定める場合を除いて、変更後のプライバシーポリシーは、本ウェブサイトに掲載したときから効力を生じるものとします。'
  ],
  PrivacyPolicyLabel.inquiry.text: ['本ポリシーに関するお問い合わせはお問い合わせフォームよりお願いいたします。'],
  PrivacyPolicyLabel.establishment.text: [
    '2022年２月３日 制定・施行',
  ]
};
