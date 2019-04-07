# frozen_string_literal: true

# Master user
pablo_garin = User.create(first_name: 'Pablo', last_name: 'Garin', email: 'pablo.garin@gmail.com', user_type: :master, password: 'abcd1234')

ucudal = Organization.create(
  name: 'UCUDAL',
  user: pablo_garin,
  description: 'La Universidad Católica del Uruguay, también conocida como UCUDAL, es la primera universidad privada y religiosa del país. Fue fundada en 1882 por la Iglesia católica en Uruguay y confiada a la Compañía de Jesús.'
)

groups = [
  ['Administración y Finanzas', 'A&F'],
  ['Ciencia y Tecnología de los Alimentos', 'C&TA'],
  ['Ciencias de la Enfermería', 'CE'],
  ['Ciencias Naturales', 'CN'],
  ['Ciencias Sociales y Políticas', 'CS&P'],
  ['Ciencias del Movimiento Humano', 'CMH'],
  %W[Comunicaci\u00F3n COM],
  ['Derecho Privado', 'DPRIV'],
  ['Derecho Público', 'DPUB'],
  %W[Econom\u00EDa ECA],
  %W[Educaci\u00F3n EDN],
  %w[Humanidades HMD],
  ['Informática y Ciencias de la Computación', 'I&CC'],
  ['Ingeniería Eléctrica', 'IE'],
  %W[Matem\u00E1tica MTA],
  ['Negocios Internacionales e Integración', 'NI&I'],
  %W[Neurocognici\u00F3n NGN],
  %W[Nutrici\u00F3n NUN],
  ['Psicología Clínica y de la Salud', 'PC&S'],
  ['Psicología del Desarrollo y Educacional', 'PD&E']
].map { |group| Group.create(name: group.first, code: group.second, organization: ucudal) }

users = [
  %w[Vincenza Gulgowski Miles_Metz@domingo.com],
  %w[Reece Jakubowski Florian_Daugherty@noah.me],
  %w[Myles Connelly Nyah.Boyle@violette.name],
  %w[Cecil Skiles John@nannie.tv],
  %w[Antonietta Jones Tyreek.Shields@verdie.org],
  %w[Melvin Koch Nickolas@jordi.biz],
  %w[Bernard Weber Kariane@theodore.name],
  %w[Porter Larson Hershel@kayli.com],
  %w[Rhea Feil Montana_Greenfelder@dakota.us],
  %w[Kali Schultz Christelle.Kreiger@terrance.ca],
  %w[Zelda Mosciski Rowland@tod.co.uk],
  %w[Thaddeus Sanford Johnathan.Towne@michel.co.uk],
  %w[Charlotte Schoen Deborah.Harvey@aniyah.info],
  %w[Demond Wiza Eli@josefina.info],
  %w[Danny Hickle Lavern@grayce.org],
  %w[Frederick Bernier Carter@blaze.biz],
  %w[Jarrell Brekke Verla_Weissnat@rocky.biz],
  %w[Hortense Ritchie Shannon@andreanne.biz],
  %w[Theodora Will Catalina@catharine.io],
  %w[Cathy Mills Brooks@patrick.biz],
  %w[Maxwell Johnston Ben.Shanahan@ivy.net],
  %w[May Leuschke Noe_Brakus@tressie.biz],
  %w[Marina Johnson Edythe@ward.net],
  %w[Lila Welch Leopoldo@marjorie.info],
  %w[Maurine Macejkovic Aric@prince.com],
  %w[Madilyn Ferry Gretchen_Macejkovic@nathaniel.org],
  %w[Virginie Brakus Erling.Schmitt@trenton.biz],
  %w[Bernie Little Shany@layne.com],
  %w[Darius Hackett Jordy@lisette.org],
  %w[Eda Hermann Genevieve.Prohaska@deon.io],
  %w[Laurence Leffler Candice_Graham@tressa.biz],
  %w[Vivien Moen Maud.Champlin@velma.com],
  %w[Abigail Bechtelar Carol@melody.org],
  %w[Alfonso Kshlerin Lera@sterling.biz],
  %w[Camilla Prohaska Angelica.Shanahan@jaunita.org],
  %w[Janick Heller Margarette@emilie.ca],
  %w[Taya Zboncak Timothy.Champlin@brenden.me],
  %w[Carlo Schuppe Sydnie.Rohan@ashley.co.uk],
  %w[Alysa Rolfson Kamren@jude.tv],
  %w[Millie Huel Jalyn@alejandra.co.uk],
  %w[Elvis Kessler Trudie.Friesen@russell.co.uk],
  %w[Thalia Barton Tillman@sarina.me],
  %w[Harrison Littel Brice@chance.co.uk],
  %w[Roslyn Barrows Trystan@aida.net],
  %w[Phyllis Kreiger Stanley@durward.org],
  %w[Kennith Koss Sibyl@agustin.name],
  %w[Orpha Kilback Amos@flavio.info],
  %w[Kristofer Adams Bette@margaret.org],
  %w[Bryana Prohaska Ellsworth@jordy.biz],
  %w[Chelsie Carroll Shany@danielle.biz],
  %w[Seth Stoltenberg Tremaine.Runolfsdottir@bonnie.info],
  %w[Alessandra Hoppe Scotty@brenna.com],
  %w[Forrest Kautzer Corine@darrion.info],
  %w[Cathy Dicki Briana@charlotte.ca],
  %w[Else Shields Zoe@david.me],
  %w[Mertie Mayert Marisa.Bayer@mortimer.io],
  %w[Talia Schultz Lorine_Larkin@fritz.ca],
  %w[Walker Kuhn Easter@merritt.me],
  %w[Aurore Harvey Ruthie@melba.co.uk],
  %w[Providenci Koss Jalen.Ferry@loren.com],
  %w[Willis Terry Brisa@haylee.io],
  %w[Stanford Bogan Marlee_Homenick@alfred.co.uk],
  %w[Valerie Stark Leta@lilla.io],
  %w[Elissa Graham Dawn@shakira.us],
  %w[Aliyah Hagenes Joyce_DAmore@kaylin.net],
  %w[Evelyn Hane Fermin@cameron.tv],
  %w[Adolphus Schoen Betty_Rice@gudrun.co.uk],
  %w[Gilbert Goyette Weston.Ullrich@enola.name],
  %w[Liliane Little Terence_Satterfield@maye.org],
  %w[Tyrese Orn Cecil_Cartwright@pascale.biz],
  %w[Linnea Crona Maximillia@ashley.org],
  %w[Keaton Schaefer Dayana.Wiegand@maia.co.uk],
  %w[Lucile Emard Antonina_Pollich@emilie.net],
  %w[Jodie Von Jazmyn_Rohan@nigel.me],
  %w[Maximilian McCullough Kurtis_Bergnaum@katheryn.io],
  %w[Norris Adams Larue.Lehner@cedrick.tv],
  %w[Yoshiko Marquardt Furman@elisha.net],
  %w[Mckenna Hand Irma@christiana.tv],
  %w[Fannie Batz Leilani@doyle.biz],
  %w[Aida Sporer Ned.Pouros@sharon.biz],
  %w[Lou Simonis Nestor_Hessel@myrna.info],
  %w[Brook Rippin Charlene@aliyah.biz],
  %w[Lavina White Alisha.Bechtelar@joesph.tv],
  %w[Jude Larkin Morgan@vern.biz],
  %w[Darren Orn Georgiana@adele.name],
  %w[Travis Beier Roy_Morar@annabelle.co.uk],
  %w[Elinore Pacocha Elbert_Shanahan@moses.name],
  %w[Augusta Rodriguez Estella.Halvorson@ike.biz],
  %w[Jonatan Wisoky Rubie_Spencer@adam.biz],
  %w[Maegan Morar Mekhi@carson.ca],
  %w[Charley Sipes Terrence.Gerlach@cydney.co.uk],
  %w[Alexandre Schaefer Maxime@emilio.me],
  %w[Ruthie Raynor Lizeth_Shields@oren.co.uk],
  %w[Bradford Streich Dave@erich.name],
  %w[Jacques Waters Noelia.Dickinson@josh.org],
  %w[Elna Wilderman Marlin@doyle.net],
  %w[Trudie Kuhn Brad@selena.name],
  %w[Karolann Schmitt Rhiannon@krista.tv],
  %w[Chandler Stoltenberg Nyah_Anderson@gunner.me],
  %w[Emmett Homenick Harley@lamont.co.uk]
].map do |user|
  User.create(
    first_name: user.first,
    last_name: user.second,
    email: user.third.downcase,
    password: 'abcd1234',
    authorization_code: '1234',
    organization: ucudal,
    user_type: :user,
    avatar_url: Faker::Avatar.image
  )
end

# Associate users to groups
user_idx_min = 0
user_idx_max = 5

groups.each do |group|
  (user_idx_min...user_idx_max).each { |user_idx| UserGroup.create(user: users[user_idx], group: group) }
  user_idx_min += 5
  user_idx_max += 5
end

decision_type_democratic = DecisionType.create(name: 'Democratica')

# Create decisions
decisions_data = [
  {
    description: 'provident inventore aut aliquam non  maxime sed ut animi a sint eaque in molestiae  eveniet qui aperiam  taut officia id et consequatur corrupti voluptas nulla  cumque eum commodi dolor  sit nam adipisci  minus aut dolorum aspernatur  quia sit unde corrupti  tnihil molestias esse  atque officia voluptatem  aut impedit nostrum quia sint distinctio consequatur harum porro  doloremque quam voluptatibus non dicta fuga eaque tempora  modi natus adipisci',
    title: 'est ipsa itaque  architecto eos a  non distinctio quisquam minus sed qui quia'
  },
  {
    description: 'architecto eos nihil sit consectetur quos ea  minima ex aut eligendi consequuntur occaecati  est mollitia impedit est provident nemo aut delectus  ducimus reiciendis corporis voluptatum  fugiat et adipisci maiores deleniti exercitationem nostrum  tmolestias ratione officia veniam iste id sunt  at est natus aspernatur eaque deleniti nemo beatae ut  nihil dolores temporibus ut necessitatibus commodi aut  totam debitis voluptatem aspernatur ratione facere expedita doloribus  todio eum nobis praesentium  eligendi officiis occaecati magni non  reiciendis ipsa ducimus velit nobis voluptates harum sit delectus',
    title: 'dolores sequi error eaque  perferendis et eum dolores quo corporis ullam nihil cum  qui velit et repellendus amet'
  },
  {
    description: 'quia commodi voluptatum quis laboriosam maiores  facilis ut est ut aut dolorem eligendi  sed consequatur recusandae expedita voluptatem id beatae tempore iure  quaerat repudiandae recusandae ut non voluptas itaque dolores  tminus occaecati quas dolorem iusto expedita quam  officia hic nihil aut laudantium omnis et  atque dolorem eum  deserunt quo sapiente  magni ut dolores velit dolorum porro  tnemo eius nihil saepe  sunt quia aliquid dolor cupiditate quaerat distinctio  et molestiae quod temporibus libero qui  laborum ab voluptatem id ad  ut dolorem sapiente aperiam cumque corrupti cupiditate',
    title: 'aut ipsum quaerat  labore commodi rerum id magni consectetur natus dignissimos numquam  ea aut aspernatur recusandae modi ut perferendis asperiores'
  },
  {
    description: 'mollitia autem a perspiciatis commodi sint  distinctio nobis et  vitae ex numquam alias  est quisquam rerum sapiente autem fugiat  test alias reprehenderit consequatur aut ratione  labore similique pariatur  excepturi ut et cum sed  sit consequatur itaque doloremque consectetur  texpedita totam velit rerum amet aut  molestiae dignissimos qui  porro necessitatibus eligendi  optio pariatur ratione architecto et ab eum sint',
    title: 'asperiores modi provident  eos ut perspiciatis reiciendis aliquam repellendus quos omnis est  ut earum quaerat quis in cumque iure error placeat'
  },
  {
    description: 'aut et blanditiis neque et provident  voluptatem ut culpa  perferendis totam eius eum  et vel quod laudantium dicta  todit dicta cumque saepe  ipsam veritatis corporis aut reiciendis adipisci aut ut at  voluptate quia animi sapiente fugiat consequatur dolorum  aut tempore dolorem facere laudantium  aut et nam neque atque quaerat quam quo  tminus veniam consequatur in ut eligendi ea laborum voluptates  deserunt eum eius possimus non velit officiis et  tempore dolor ut officiis quidem  nesciunt in aut quisquam',
    title: 'et a et eos id et animi  totam ut officia quod sequi  qui exercitationem nihil ipsam similique eos'
  },
  {
    description: 'eos aut ut sunt quia  vel ea quis quaerat reiciendis veritatis facere nisi  ut quisquam in a dolor harum vero  quaerat nobis aperiam minima delectus  tex minus commodi laborum ad reprehenderit  nostrum nam et vitae dolore vel et  commodi et amet corrupti repellendus in quibusdam  quidem eos facere optio id quia repudiandae  dolorem corrupti quaerat architecto consequatur  tharum omnis officia sed  ipsum qui consequatur laborum sed ea modi nobis voluptatem  id esse mollitia expedita asperiores  animi est similique  quo velit voluptatem',
    title: 'quod nihil sit iste id  assumenda ut ut iusto eius omnis sunt quis  et architecto ab tempora eum id'
  },
  {
    description: 'consequuntur quidem facere quod nihil quia  animi est natus assumenda est consequuntur saepe consequatur  sit architecto omnis aliquam et at mollitia quia  trepellat numquam est  voluptates error fugit quas perferendis reiciendis ea aut  quas culpa odit quia doloribus  nemo unde et voluptatem  neque aperiam dolorum quaerat dolor non aut harum  tsit et quos  optio fugit dolores tempora rem harum  deleniti blanditiis voluptatum  et reiciendis tempora qui repellat molestiae  iusto suscipit et soluta aut consequatur est asperiores',
    title: 'voluptatem laudantium consectetur ullam vel ut voluptatem quos magnam  qui repellat perferendis est aut velit accusantium  animi quaerat rerum ipsum recusandae et illo vitae deserunt'
  },
  {
    description: 'corporis tempore voluptates nihil aspernatur  laudantium saepe hic eum dolorem occaecati atque recusandae et  voluptatem et atque sint nulla est quasi inventore  expedita quia velit est ex quam quo  tneque molestiae modi sint quo  aut qui eum  nam repellendus et eveniet dolorem cumque  omnis pariatur et vel voluptatem  tnemo ea atque et adipisci laborum  id deserunt quaerat  est modi in  possimus velit sed',
    title: 'totam qui sit et eius  itaque voluptate neque consequatur ea est dolor possimus  delectus et dignissimos ducimus neque eius voluptate ullam eveniet'
  },
  {
    description: 'cumque iste dolor dolores  beatae eos quod enim voluptates quo  enim corporis ipsam a molestias incidunt  et quia ut tenetur eum alias ea harum  provident possimus ullam animi id sint accusamus ea  teaque repellat sunt molestiae maiores voluptatum placeat dicta qui  aut iusto facere repellat magni quis nesciunt  rem quisquam autem beatae  placeat quia nihil nam quos in aut eos voluptatibus  tvoluptate vel est ea veniam similique  consequatur voluptates laudantium vel ipsam ex maxime  sit modi neque quia ducimus placeat fugit  explicabo quia corporis et et  nulla dolores consequatur eligendi',
    title: 'ut reprehenderit in reiciendis  incidunt aut qui dolores neque  enim et consequatur sint'
  },
  {
    description: 'quasi quia est voluptas consequuntur  voluptatem ex sequi omnis eum et enim beatae cum  voluptatem beatae magnam nam nobis libero quisquam  tqui nisi quae laudantium aut eaque corporis occaecati odio  ut dolore sed et id  tempore culpa minus dolores fugit aut  tqui officia reiciendis qui distinctio ut odit quasi  vitae eos cumque  sed ut velit nostrum totam quo  quos aut quisquam provident eligendi voluptatem  fuga est ea iure optio provident quos dolorem error',
    title: 'in recusandae voluptatem  quidem unde enim est ab et voluptates  dolorem quae vel fugit fugiat est rem'
  },
  {
    description: 'fuga laudantium dignissimos omnis quod numquam sunt  culpa quos iste eum eum quibusdam inventore eos adipisci  suscipit qui omnis nemo minima aut molestiae facilis  doloribus iure est consequatur consequatur neque velit  voluptatem hic adipisci maiores  tnam praesentium delectus numquam minus quam vitae distinctio ut  sapiente voluptates ad est maxime tempora quia est  ea aut quis deserunt ex accusantium id quam  tenim minus dolor  velit id et suscipit  ipsam quaerat quidem modi placeat nisi consectetur  rerum non eligendi deserunt voluptas ducimus est',
    title: 'fuga eaque assumenda laboriosam  asperiores ad voluptatum  qui fugiat delectus et blanditiis perferendis nemo itaque tempora'
  },
  {
    description: 'laboriosam velit aspernatur est in porro fugit adipisci  quia sed quis sequi facere ut dolore atque rerum  ut praesentium molestiae voluptate adipisci aperiam ullam  voluptatem illum ab facere sunt dolorum ullam  tnon unde odio  magni ullam alias distinctio quod et vel consequatur  quia excepturi et odit porro  teius ut culpa sit eligendi voluptatem totam eaque inventore  ex est voluptatum mollitia ipsum sint fugiat  quasi atque dolores et fugit vel voluptas repudiandae  eligendi facere vel reiciendis illum accusantium  sint quod voluptas quis provident nemo minus optio',
    title: 'itaque odit aut cumque saepe tenetur qui et quod  et repellendus est sint et rerum  dolorum quae occaecati aliquam a qui porro corporis quam'
  },
  {
    description: 'temporibus dignissimos ut quia maiores  quo doloremque nemo asperiores expedita rerum architecto  ipsam veritatis atque dolorem et reprehenderit qui eveniet  texplicabo aut sit eaque porro omnis quisquam aspernatur perferendis  consequuntur numquam nobis eum a nostrum non ex quia  voluptatem eos at nesciunt praesentium dolor aut fuga architecto  dolor et vel enim corrupti quisquam  veniam id repellendus  tvoluptatem sed ullam commodi natus id doloremque eligendi quas  possimus beatae deserunt unde voluptatem suscipit  nemo accusamus tempora consequatur voluptas distinctio similique',
    title: 'est possimus neque minima fugit quis  similique sed dolorum et ex dicta qui  ullam omnis sed nihil'
  },
  {
    description: 'deserunt pariatur omnis delectus voluptatum  deleniti quos minima alias aut sunt totam  laboriosam in corrupti ut incidunt illum quae  consequuntur sint placeat rerum aut  esse facilis ullam et eos  test minima totam ipsam non et quia odit assumenda  aut animi ducimus ad et non ex esse  quisquam rerum dolor ut fugiat consectetur consequatur ea  tenetur dolores ut molestias temporibus maxime  sit ea beatae  tdelectus ab sint vero molestiae suscipit  id corrupti in et ad voluptatem  fugit cupiditate saepe ea beatae voluptatibus voluptas vitae',
    title: 'unde id nobis illum  incidunt accusantium est  ut ut eaque nisi vel modi aperiam voluptas nihil'
  },
  {
    description: 'consectetur suscipit repellat voluptates autem doloribus est veniam  fuga nihil atque non et consequuntur dicta aliquid  facilis error natus ea  impedit itaque aliquid  eius voluptatem optio necessitatibus est vel quas repellat  texpedita et iure  doloribus minima est  deleniti nesciunt molestiae reprehenderit molestias  tvel in qui recusandae sed et  vitae fugit omnis officia  est nisi voluptatem provident debitis qui repellat voluptatum',
    title: 'voluptas ut eum reiciendis dignissimos  ut atque cumque et placeat nemo quisquam dolorem voluptatem  itaque error id quisquam dignissimos facilis accusantium'
  },
  {
    description: 'iusto molestiae qui nihil expedita sed  deserunt voluptatem voluptatum quisquam quia eum ut  quia nostrum nesciunt consequatur  tquia fugit molestias quos blanditiis corrupti  eligendi nostrum aperiam rerum voluptates ex aut magni  rerum quia ipsum in corrupti eligendi rerum  officia excepturi sit quia aut recusandae  tsed autem soluta  amet architecto omnis consequatur et numquam quidem doloremque  quo sint vitae facere dolorem  saepe quis dignissimos esse consectetur itaque  ipsa qui autem unde sed amet cum in',
    title: 'iusto ab voluptatem optio consequatur exercitationem eos  quam recusandae fugit eaque  quae vero error blanditiis non optio repellendus provident inventore'
  },
  {
    description: 'delectus enim omnis  sed eaque quia  laborum consequatur nihil dolorum tenetur autem itaque maiores et  corrupti vitae maiores sapiente facere qui ea  taliquam rem quaerat  harum blanditiis vitae tempore  consequatur ullam id ad incidunt error veritatis at  amet id qui et fugit et qui aut  tnobis dolor reiciendis aut deserunt  consequuntur eos non impedit totam  eligendi saepe minima repellendus ducimus et  harum facilis id consequuntur praesentium',
    title: 'minima vitae eum  sint ea numquam aut qui vitae  porro officia consequuntur natus omnis voluptas blanditiis incidunt et'
  },
  {
    description: 'fuga aut ipsum eos veritatis est voluptatibus  quos et voluptatem distinctio deleniti quae ipsa  est numquam aspernatur eum  saepe aliquid est ut quae  tsapiente quam et incidunt aut consectetur ea  velit occaecati et et ut  accusantium quam qui explicabo error ut optio impedit  expedita ut tenetur  tvoluptates facere est consequatur  quae nobis sit excepturi magnam modi dicta  autem molestiae ut dolorem est aut  animi sed sit tempore excepturi voluptas ea sunt aliquid',
    title: 'nobis illo qui et quaerat temporibus tempore aperiam officiis  ad dignissimos et quod ipsam voluptatem ut  quibusdam eos fugit laudantium consectetur in'
  },
  {
    description: 'aut laudantium sint aut sequi  ut dolorem ea  harum iusto autem  voluptatem rerum dolor exercitationem ab  unde omnis et rerum dignissimos cum consequuntur in tempora  tautem non incidunt modi dolore repudiandae sit voluptas blanditiis  sapiente voluptas tempora veniam perspiciatis est et est dolorem  cum fuga ut omnis nemo sed  nisi repudiandae enim libero aut tempora hic est culpa  ut rerum odio magni  tet asperiores provident  eius sequi sit architecto soluta eligendi facere  delectus aut ut eum totam sed harum odio aut  repellendus non occaecati nam voluptas',
    title: 'facere pariatur libero  laudantium ex ad laborum omnis perferendis animi fuga  dolore non ex aut pariatur consequuntur omnis a'
  },
  {
    description: 'blanditiis distinctio consequatur quia qui et repellendus consequatur molestiae  eligendi qui atque tenetur ea sed  culpa autem consectetur tempore inventore repellendus reiciendis recusandae  quas voluptas nulla veritatis et inventore et  taperiam non quidem enim impedit reprehenderit saepe  ratione quaerat dolor  dolores corrupti et et  similique quam architecto ullam eum ipsa ipsum fuga ad  quia unde et placeat reprehenderit labore  tassumenda delectus pariatur non quia ex  assumenda dolorum harum est et et velit et asperiores  eum reprehenderit voluptatum  placeat ut sed quas doloribus qui quam eos distinctio  magni quae nam natus vitae ducimus repellat quasi et',
    title: 'nihil doloribus quis explicabo omnis laborum  non qui suscipit voluptatem repudiandae corrupti enim  mollitia illum quam consequatur voluptatibus nulla voluptatem'
  },
  {
    description: 'doloribus libero laborum earum repudiandae ut  magni est ab impedit  tempora reprehenderit quam quod iste ducimus voluptas ut  tet possimus quae molestiae voluptatem  aut et ratione beatae nesciunt nemo et nisi  provident explicabo commodi dolores sint aliquid alias hic  neque at ea mollitia qui et vel ab vero  sed sunt labore ut voluptas quo  tin voluptatem cumque voluptate et  quod animi deserunt deleniti corrupti delectus  eos esse sint et aut quas assumenda sapiente  esse aut ipsa molestiae quia eligendi  doloribus cupiditate et quasi dolore consectetur',
    title: 'sed maiores cupiditate nesciunt ut omnis  amet perspiciatis aut doloremque maxime dolor necessitatibus  expedita laboriosam minus dignissimos officiis voluptatum suscipit dicta'
  },
  {
    description: 'voluptas minus consequatur facilis quam qui dolor at rerum  et aut cupiditate ad quos voluptatibus quibusdam et  pariatur sed est qui distinctio iste sit  maxime libero accusamus sed hic quisquam  tquae debitis inventore occaecati eos sit consequatur  quibusdam dolorum officia  quasi et qui  perferendis repellat consequatur aliquam deserunt ut  incidunt voluptate quia velit architecto  tharum unde molestiae velit itaque delectus mollitia sequi facilis  eaque rerum sapiente eum est quae quia doloremque  cupiditate odit harum',
    title: 'consectetur voluptas maxime totam consequatur ex ut esse  vero ea ad possimus quod qui pariatur  labore eaque aut delectus sed dolores'
  },
  {
    description: 'ipsam nobis et aliquid non vitae  perspiciatis et tempora vel recusandae  in est ut et saepe perspiciatis dolor sed ut  test enim molestias voluptatibus est  et ut asperiores aut ut sit  vel dolor aliquam  sunt neque vel in ullam perferendis ut  tnobis laboriosam laborum molestiae et ad natus et  expedita est maiores recusandae et dolor dignissimos  et assumenda magni libero nihil  quae sit voluptas accusamus reiciendis ut expedita qui',
    title: 'velit et nostrum commodi in enim et  error rerum voluptas est et deserunt sed  dolor laudantium et'
  },
  {
    description: 'hic qui sed error accusantium quaerat officiis quia corporis  iusto dicta et iste  nostrum et et harum  earum tempore optio dolores in  facere est modi repellendus sed sapiente similique qui  treprehenderit accusamus numquam commodi et atque omnis vel  atque quaerat aut error aut ad  maxime placeat est fugiat qui autem adipisci expedita  tnon sunt qui et totam  amet est et doloribus at culpa vel consectetur omnis  perspiciatis eum quia distinctio animi',
    title: 'laboriosam tempore velit  ut tenetur est quaerat aspernatur maxime  nihil ea et totam'
  },
  {
    description: 'aliquid et aut ut commodi et soluta  voluptate architecto voluptatem in qui ratione rerum et  perferendis fugit aperiam possimus dolore doloremque totam vel libero  tqui maiores quos quae non voluptas  sunt et eum rerum non consectetur  rem in atque omnis iste sed  tmolestiae ex et optio sunt qui  ex eos rerum earum ut aut expedita impedit iste  deserunt et ex molestiae expedita  explicabo earum consequatur autem sed tempore minima nobis velit  cumque assumenda reprehenderit dolores vitae',
    title: 'neque incidunt molestias reprehenderit dignissimos et repellendus asperiores  quidem sint earum similique non ut maiores  accusantium inventore nostrum non laboriosam'
  },
  {
    description: 'dolor voluptatem aut et similique rerum cumque aspernatur  ratione occaecati natus consectetur itaque nostrum  natus aperiam similique explicabo nisi doloribus totam  quo excepturi et qui  tdignissimos sed aut veniam esse eos  unde in blanditiis eos totam  asperiores itaque consequuntur ut illum  voluptatum dolor velit est repellat qui sit  tconsectetur nihil ullam nulla aut aut quia blanditiis  sequi sit ipsa aut qui quia numquam  voluptatum reiciendis sed',
    title: 'odio neque iste  magni qui debitis minus dolorum recusandae aut nesciunt et  omnis voluptatem vel'
  },
  {
    description: 'omnis dolorum ipsum dolores asperiores dolores distinctio impedit  porro et labore ea quibusdam alias saepe dolor ratione  molestiae sint ut consequatur non nesciunt  ut et quas perferendis asperiores error similique incidunt dignissimos  et exercitationem soluta nesciunt officiis dolores  tdolorem officia culpa veniam ut quia  culpa eaque enim quaerat aut cupiditate molestias quos  in sit est minus ex nihil  tcorporis qui illo nam  ea quia impedit  dicta nobis ex aliquam fugiat qui quia iusto  iusto et sapiente',
    title: 'ea placeat atque porro est tempora ad expedita  et harum dolorem dicta labore quia impedit ea doloribus  modi quia in debitis maiores est'
  },
  {
    description: 'facilis eligendi commodi quo officia voluptatem rerum voluptatum consequatur  esse omnis est deleniti laudantium tenetur  quia ipsa et  laborum aliquid temporibus  thic illum recusandae numquam quos dicta exercitationem  inventore dicta sint quisquam at saepe cum aut ipsum  quidem ullam et nihil soluta ut eos  tdolorem ab rerum reprehenderit sapiente a perferendis sit explicabo  consectetur earum harum cum  quam deserunt eius quibusdam aspernatur omnis  ratione dolor aut dolore at amet  eum in ipsum ut deserunt at id',
    title: 'nobis pariatur vero magnam est sit iure nam  excepturi est laudantium labore rem est  est deleniti maiores possimus magni qui aliquam'
  },
  {
    description: 'dolores nesciunt non  illo id necessitatibus  quibusdam tenetur in  taspernatur praesentium velit et quia delectus sint  nemo perspiciatis ea culpa  repellendus dolorem laborum doloremque voluptatibus odit autem quo  nihil optio dolorum odio voluptas molestias iste eos  treprehenderit velit ad accusamus sunt  voluptas corporis ea animi consectetur accusantium vel  consequuntur optio aut quia quisquam vero rerum dolorem  quia odio consequatur quidem quia ex  accusamus et earum placeat nisi ullam',
    title: 'explicabo architecto incidunt consequuntur omnis  possimus quidem sed velit fuga et  et voluptates voluptas sit'
  },
  {
    description: 'quis deserunt quos delectus  modi libero laudantium voluptatibus aliquid fugit voluptatem aut  ut vero aut facere  unde asperiores voluptatum in  tdolor alias pariatur qui corrupti porro  excepturi nisi quis eum optio eos dolor blanditiis adipisci  et aut ducimus  ratione quia est  tut eius modi quibusdam  sunt et eveniet consectetur saepe iste voluptatibus  officiis deleniti in consectetur autem ipsa aut  laborum doloremque incidunt ipsa harum error',
    title: 'magni numquam velit quasi sunt omnis excepturi nobis ea  beatae delectus ex placeat ipsa ea nisi nulla  neque laborum ut est'
  },
  {
    description: 'quaerat quos voluptates consectetur  perspiciatis dolorem est porro  numquam accusamus ea et  quae quos facilis qui iste consequatur dolor eveniet  tcorrupti et molestiae eaque voluptatibus nisi in qui  magnam dolorem et illo  ex tempora tempore dolor placeat  quidem voluptates porro  test aspernatur voluptatem aperiam  itaque non ipsa dolores  et dolorum sequi occaecati possimus  voluptas molestiae excepturi officia beatae  consequatur asperiores recusandae qui',
    title: 'eos corporis tempore officia laudantium non  sunt maxime nemo odit libero in sed et  molestiae enim molestias repellat'
  },
  {
    description: 'deleniti quis voluptas molestias quia voluptas tempore  facere est quasi delectus saepe quas nihil  occaecati reiciendis placeat enim  molestiae nesciunt harum sapiente eveniet  nostrum ad quibusdam a vel  tfacere voluptates quod veritatis quos est illo aut quis  aut ipsa qui nihil  quis voluptas totam fugit nulla  nihil id totam magnam  tmolestias sed qui rem facere nulla dolorem  distinctio ea quisquam  distinctio mollitia alias ut at omnis fugiat architecto est  odio sed nulla',
    title: 'quia unde alias porro rerum  fugit porro voluptates omnis molestiae  autem facere voluptas suscipit tenetur'
  },
  {
    description: 'in excepturi voluptatum harum distinctio  numquam quaerat rerum omnis sit sint quia ut  est rerum eum fugit esse explicabo  voluptates est provident tempora similique qui  ut rerum modi aut dolorem dolores enim  tlabore adipisci neque voluptates mollitia deleniti  a aperiam in asperiores  qui eos amet quaerat quia harum dolores dolor aut  non dolorem et iusto labore et autem sunt  debitis eaque iusto est  tquis et reiciendis quibusdam  quas laboriosam consequatur magnam sint et eveniet  cupiditate quas iste  doloribus rerum aut beatae et doloremque  amet aperiam blanditiis et molestiae quod excepturi iste quam',
    title: 'natus et officia est  et eos placeat doloremque neque quidem aliquid  labore et in'
  },
  {
    description: 'voluptatem suscipit cupiditate voluptate sunt cum sint  cum facilis quia neque  ratione magni maxime omnis dolor cumque ut consequuntur vitae  quod omnis doloribus et molestiae  test quasi eos assumenda porro a culpa  dignissimos rem labore omnis  sint eos sequi consequuntur est sed minima nobis aut  eos aut iure illo non amet corporis  timpedit ut commodi officiis dolores possimus aut  illum dolorem impedit maxime aliquam  laboriosam dolorem quasi temporibus nesciunt inventore',
    title: 'aut aut dolores  praesentium eius reiciendis  quia est aut'
  },
  {
    description: 'distinctio quia quae fugit facilis rem explicabo ipsam  tempora corrupti ut et consequatur est aperiam sed a  quo in sed quasi atque  quia dignissimos libero quae exercitationem  voluptas vel maiores quia minima atque  tconsectetur et nobis ducimus voluptates occaecati maiores ad  saepe voluptatem est  reiciendis dignissimos minus id maiores atque accusantium quos  ullam autem sit id incidunt illum vel soluta sint  tdelectus porro qui neque rerum rem non perspiciatis id  at rerum quia vero est magnam impedit quia  officia aliquam sint  est eaque et qui ad soluta qui',
    title: 'iste occaecati dolores officia eligendi possimus sit  et voluptatem natus  molestiae dolor est'
  },
  {
    description: 'expedita quod porro incidunt a praesentium  quam assumenda nobis repellendus  porro et saepe sunt optio facere reiciendis recusandae quibusdam  tut nam et  ut animi placeat ut consequuntur enim quaerat deleniti suscipit  consequatur qui eaque occaecati dolores voluptate est  et nostrum at fugiat in incidunt cupiditate  debitis dolor maxime repellat nihil  tconsequatur id at  hic magnam explicabo  voluptas repudiandae quae laboriosam esse quia natus deserunt alias',
    title: 'delectus perferendis nisi et accusantium quo enim  quibusdam assumenda voluptate  dolores iste maiores quis consequuntur quasi voluptatem laborum'
  },
  {
    description: 'consectetur illo et nobis exercitationem et inventore  officiis et qui repellendus animi aut natus quos nesciunt  tempora omnis et inventore expedita  ut iste dignissimos occaecati  earum vel quidem illo eum quia aut corrupti  tmodi alias repellendus vitae explicabo est hic  iste nulla est quo nihil in harum magni  autem sed sit vitae  ttempora autem aut officia libero aut doloremque error itaque  molestiae est veritatis  quo placeat ut quia suscipit dolorem  tempora labore voluptatem dolore sit et eligendi ad  et qui totam nam dolor nisi temporibus',
    title: 'fugit beatae tempore  porro earum autem nam dolor quia aut  nihil eos facilis quod ea et aliquam animi'
  },
  {
    description: 'ut vel cupiditate  numquam totam dolorem consequatur nostrum et  quod sit ducimus velit  ipsa optio dolores eos suscipit consectetur  totam perferendis perspiciatis  taut omnis inventore est delectus at  dolores voluptatem dolorum eveniet dolore ad veniam  dignissimos accusamus excepturi non omnis incidunt qui  voluptas numquam amet maiores  tiure amet veritatis sed ut saepe ratione  repellat at possimus  sint repellat quae doloribus  qui voluptas sunt quibusdam non ratione itaque rerum dolor',
    title: 'et rerum voluptates provident voluptatem qui consequuntur sed quia  ad molestias perspiciatis  odio sunt assumenda illo veniam eos voluptatum occaecati fugiat'
  },
  {
    description: 'et voluptatibus odit ut est  commodi dolores doloribus  nihil et ab  porro error ut quia et  commodi quae qui  tvoluptate non optio aliquam  ut totam facilis reiciendis esse sint iure  aut excepturi facilis iste inventore  omnis voluptatem deleniti in vitae  tdeserunt veniam qui est rerum itaque molestiae sed  dolor dolorem dolorum  hic dolores totam omnis',
    title: 'est eaque voluptas esse rem reiciendis tempore aliquam  delectus nesciunt aut ex  labore mollitia dolor adipisci'
  },
  {
    description: 'dolorem rerum ullam  ullam repudiandae consectetur minima nihil cumque sapiente minus  magni totam voluptatem odio  repellendus odio veritatis distinctio  id inventore ex sed qui et  tamet qui minima voluptates sit impedit aut asperiores inventore  ad atque vel corrupti provident voluptatum aliquid qui quia  voluptatem maiores sunt blanditiis deserunt error odit qui delectus  taut eveniet assumenda optio maiores quis  illum saepe quia temporibus voluptatibus consectetur odio corrupti ut  harum rem necessitatibus animi incidunt tempore',
    title: 'sed rerum iste earum ducimus voluptatem aperiam libero  veniam maxime laboriosam at non rerum voluptas cupiditate labore  eligendi dolore impedit doloremque unde nam'
  },
  {
    description: 'fugit sapiente qui  voluptatem totam fuga exercitationem placeat sint praesentium consequatur odit  aut expedita itaque autem perspiciatis earum qui aliquam modi  cupiditate est aut illum vel quod dolorum illo repudiandae  taut dolores quaerat  et aut animi magni non  praesentium voluptatum et dolore ea eos aut architecto qui  laborum velit impedit ut odit  ipsa deserunt minima voluptatem est recusandae  tunde qui animi nobis tenetur  ut nulla sed qui exercitationem et  animi iusto illo natus vitae aut  eaque omnis laborum sed iusto  aut nemo officiis reiciendis perspiciatis necessitatibus',
    title: 'ea possimus deleniti est perspiciatis autem tempore unde quis  eum consequuntur aut reiciendis aut quam maiores autem  explicabo exercitationem et'
  },
  {
    description: 'aperiam alias perferendis qui aut doloribus facilis aliquid laborum  fugiat beatae quis reiciendis saepe  doloribus nobis vero  perferendis iure quibusdam nobis quis voluptatem nisi omnis magni  eligendi autem nulla sapiente odit harum  taliquid quos et cupiditate est error velit debitis  libero rerum quo  consectetur sunt animi a nihil voluptates  quo repudiandae vitae occaecati voluptas ea  doloribus molestias nulla eveniet  tcommodi non dolor animi ut possimus eum aut  nihil illo autem quas voluptas et  molestias voluptatem animi',
    title: 'quo est facilis ut repellendus laboriosam aut ullam autem  ratione odio perferendis quisquam  totam est est quo maiores ut tempora occaecati'
  },
  {
    description: 'quo similique omnis magnam saepe magni sequi nemo  natus qui repellendus omnis quia quaerat molestiae  at quisquam eos  tet accusamus quo vitae quas ex ut aperiam  rerum voluptates et saepe consequatur  at sint facilis qui  odit quas officiis consequatur quae  tsit et alias illum  commodi facere deserunt consectetur et  ratione rerum blanditiis quas est maiores',
    title: 'facilis delectus quia atque voluptatem  enim et maxime ipsum exercitationem fugiat deleniti  ut voluptatem odio ipsam'
  },
  {
    description: 'dolores consequatur commodi  fugiat qui et dicta assumenda atque sint  error rem est voluptatibus  enim magnam saepe quas quae possimus ut  voluptatem iste reprehenderit tempore reiciendis debitis aut perferendis illum  tut saepe id ut qui  voluptatem laudantium et quod voluptatum  maiores illo eos sed deleniti qui  hic consequatur asperiores aut quidem  tdolor soluta porro dolorem cumque eligendi enim  omnis dicta et qui aut  laborum eos ut id ullam quia',
    title: 'velit aliquid quod excepturi eligendi qui veritatis laboriosam et  veniam sint aut itaque sapiente et provident ea  ullam perferendis consequatur'
  },
  {
    description: 'nostrum dolorem non consequatur sed officia hic  id perspiciatis placeat quos velit repellendus quaerat  et dignissimos accusantium voluptatibus quia rerum  taspernatur qui dicta quibusdam qui velit nihil aut quas  ea id qui rerum  omnis ipsa fugiat et adipisci error mollitia  aut sit enim qui voluptas  tarchitecto nisi consequatur mollitia  molestiae a saepe mollitia  dolor ut omnis explicabo quibusdam  quaerat blanditiis placeat nam maiores ipsa fugit cum velit  cumque autem aut',
    title: 'adipisci placeat ut ex  hic aut consectetur molestiae rerum et  error hic suscipit ab'
  },
  {
    description: 'dolore voluptatibus omnis enim enim sed ullam atque expedita  quia natus doloremque quas necessitatibus  voluptas qui aut architecto sit dolor  tempore non nam et sed et suscipit  tenetur dignissimos qui fugiat qui sed  tquo doloribus quisquam maxime atque in ducimus  voluptas veniam alias accusamus  sed ea et corporis doloremque  repellat voluptatum fuga dignissimos repudiandae  unde voluptas repellendus veritatis eligendi praesentium  tet itaque repellat nihil aut ducimus corporis fugit  ratione sunt similique deleniti eaque nobis omnis temporibus  suscipit odit totam vel  aut alias quia quis blanditiis beatae est suscipit  iusto dolorem fuga sit ut expedita excepturi',
    title: 'et dolores inventore quis qui est  qui nulla architecto vel a rerum pariatur non  nesciunt doloremque quod sequi qui asperiores ab'
  },
  {
    description: 'repellendus debitis natus qui a labore non odit  minima molestiae aperiam id ullam dolor quibusdam eum soluta  natus veritatis incidunt id  ad possimus sunt perspiciatis doloremque et fugiat eaque ut  consequatur voluptates dolor  tfacere voluptatem et quidem ut aut ad  voluptas odit sint pariatur est quo voluptate voluptatem  laudantium odit tempore  tdolorum commodi dolorem fugiat praesentium  illo provident omnis sapiente quaerat occaecati  quae quibusdam dolorum qui nihil nisi rerum tempora  atque magnam dicta recusandae iste culpa esse earum dolorem',
    title: 'non molestiae iure et rerum rem  autem rerum cupiditate vero commodi rem  harum molestias aliquid tenetur'
  },
  {
    description: 'dicta expedita laborum similique blanditiis eveniet velit  et esse sed  quia nesciunt debitis  fuga praesentium sit ducimus  tmaiores eaque error tenetur  eius ipsum id iste quod aut animi consequuntur  quidem earum fugiat libero voluptatem at  labore qui nobis et neque  tautem assumenda libero nihil officiis  veritatis quos debitis est  est repudiandae suscipit expedita non qui numquam iusto  velit iste delectus pariatur nulla  voluptatem sed officia et quaerat ipsa',
    title: 'dicta aut nihil quaerat quia alias aut a  eum magnam modi delectus dolores  repellat suscipit est quidem et dolore aliquam earum'
  },
  {
    description: 'et qui voluptates rerum quod in laboriosam sint  explicabo rerum repellendus in eius a  exercitationem voluptas dolorum sit  tdolores rem cumque ut et suscipit reiciendis dolorem sit  id autem quia aliquid  consequatur consequatur incidunt veniam sit ea  vitae consectetur maiores non explicabo id quis  et minima vel et  tid est quia architecto a dicta  non velit qui delectus fugiat accusamus  quia placeat voluptatem delectus cupiditate  quo optio ratione deleniti labore cumque nulla  qui molestiae eligendi rerum sed est cumque ut',
    title: 'consectetur sed ipsum animi molestiae occaecati  tempora omnis autem velit vel  porro dignissimos harum iusto non beatae provident neque quaerat'
  },
  {
    description: 'autem amet voluptatem eos consequatur ut quis sed fuga  aliquid doloremque veritatis pariatur et ipsum velit  rerum odio sed sapiente sit voluptatem est  ratione voluptatum et molestias qui  quia saepe praesentium ipsa consequatur tenetur  tullam ipsum sequi  aliquam est deleniti voluptatem officia consequatur  quos eius autem nostrum ipsa est  possimus ut cupiditate quasi quia  tdolorem aut ut non dolorem iste autem est  vitae modi sed  officiis aut minima sed odit  voluptatem fugiat dolore minus id in adipisci  vitae reiciendis soluta tenetur excepturi dolores',
    title: 'quasi iusto est nemo cum natus nihil  dolorum nulla eligendi adipisci similique excepturi autem  qui et sed'
  },
  {
    description: 'officia consequatur sit id illo sed nihil nesciunt  consequuntur excepturi vero  voluptatem aspernatur aperiam sit  qui labore at consequatur sint sunt aut  tnam culpa totam non voluptatem cupiditate quia qui expedita  tempora aut aut earum  et quis facere cumque  veritatis laborum sit asperiores aut iusto est libero placeat  tnecessitatibus reprehenderit impedit  quas quaerat nihil ut itaque distinctio libero ut consequuntur  ut consequatur itaque et voluptatem officiis quos quidem sit  ea ipsum ut  veritatis in saepe eveniet non',
    title: 'sapiente odit similique dolorum  molestias accusamus cupiditate dolore dolorem et  ducimus vitae totam iste accusamus consequatur'
  },
  {
    description: 'corrupti sed quidem facilis itaque animi  asperiores delectus aut commodi velit est nihil et sed  sit pariatur earum assumenda accusamus  voluptatem et maiores quisquam id dignissimos repellat  dolorum et quas error  tsit iusto eos quis quam sint  magni id molestias qui ratione incidunt  occaecati optio ea  ut sit quia in ratione  fugiat fugit aspernatur in ullam sunt voluptate aut molestias  tdolores est aut ullam voluptatem et quaerat magnam  dolores corporis consequatur velit perspiciatis magnam eos illo porro  nostrum consectetur at',
    title: 'et cum officiis dicta  illo nostrum officiis  fuga eum sapiente assumenda eaque est aperiam'
  },
  {
    description: 'aliquam quae esse magni voluptatem velit iusto et vitae  neque quia mollitia voluptatibus sed doloremque aperiam  dolores dicta sed ut necessitatibus in totam tempora omnis  tcumque harum voluptatum quia eius nam  doloribus sunt repellat non  aliquid non est  aut placeat quas dolorum  et molestiae eum voluptatem animi  taliquid animi labore non fuga illo  non aut et debitis cumque aut sunt quae  est minima reiciendis est temporibus',
    title: 'itaque ipsam enim  labore quisquam culpa consequatur amet sunt laborum  vel autem ut optio labore beatae nesciunt nemo qui'
  },
  {
    description: 'temporibus est suscipit accusamus maxime  voluptates dolore laudantium culpa atque sit  mollitia voluptas ab iste  tvoluptatem nulla et hic sit vitae  officia nulla reprehenderit  aliquid corporis occaecati odio  cupiditate consequuntur et rerum praesentium  tdolorem ut et  earum voluptatum eveniet veniam  voluptatem excepturi numquam  rerum at quo ea omnis natus  maiores voluptatibus ipsam optio iusto',
    title: 'repellat corrupti quia vel velit asperiores magni  enim voluptate optio ea  rerum dolores perspiciatis voluptate molestias'
  },
  {
    description: 'sequi ut sed  ut eveniet eaque ducimus fugiat laboriosam  eum asperiores tenetur quae  id fugit non  nihil qui dolorem ipsum error sint ipsam et consequuntur  tculpa doloribus deleniti quia  sit minus tenetur pariatur accusamus ut sequi  consequuntur animi quos molestiae facere sequi sit quia sed  rerum adipisci quia voluptas asperiores non eos  placeat ipsum et ut hic quis est eos  tpariatur eveniet optio id  officia atque totam aut eos doloribus nulla vitae veritatis  molestiae cumque laudantium culpa laboriosam aut sint  officiis vero illo architecto ut',
    title: 'sed alias qui quod libero voluptatem  adipisci vel porro aperiam ex error ea deserunt ipsum  quasi consectetur eaque'
  },
  {
    description: 'sint quos inventore  doloremque dolores quo inventore ipsum  consequatur ratione ad autem deserunt dignissimos earum sint  natus quo magnam deserunt corporis quidem accusantium ex pariatur  tqui nesciunt molestiae nemo iure  nihil facilis in veniam dolor excepturi dolorem itaque  nesciunt perferendis et  voluptas molestiae ab beatae facere est provident  tratione ab consequatur delectus est ipsum voluptatem optio nihil  cumque ex consectetur beatae eos  ea placeat error distinctio earum qui voluptate  inventore nisi qui  quas natus quos nesciunt dolores nihil harum',
    title: 'mollitia et quasi et voluptatem doloribus  adipisci cupiditate aut in  sequi error aut quas et aspernatur fugit enim ex'
  },
  {
    description: 'voluptatem quas numquam non vel molestias est  tempora voluptatum vel possimus quibusdam facere tenetur beatae maiores  veritatis rerum eligendi  ttotam veritatis perferendis temporibus enim omnis suscipit eligendi  qui mollitia omnis et fuga at facere et  molestiae ullam cumque nisi voluptatibus et voluptatem quis  quia quisquam aliquam ut libero eum unde facere  trerum consectetur culpa harum voluptatem sit exercitationem  velit adipisci illo nemo eos temporibus quidem  asperiores voluptatem accusantium iusto quo eum  cum ullam voluptatem magni perspiciatis saepe laborum quibusdam',
    title: 'ad ratione reiciendis ut officia rem quae perspiciatis  nesciunt eum cum distinctio  nisi in neque molestiae hic sed dolorem aperiam exercitationem'
  },
  {
    description: 'sit nemo et quasi nulla quis consequatur dolor error  eligendi quia labore dolores  rerum fugiat rerum sed  temporibus a consequuntur molestias quo et nisi nihil rerum  ea illum sint itaque iste aliquid  treprehenderit non illo ut itaque  est suscipit quibusdam impedit aut nihil sit dolores  repellendus nulla fugit odit est perspiciatis maiores consequuntur  reiciendis sunt quis et corrupti vel rerum  placeat doloremque saepe earum voluptas aliquid alias  thic iusto architecto vel laboriosam aut  nam quasi iusto doloremque placeat sapiente et vel  est repudiandae sapiente  in soluta quas molestiae at',
    title: 'incidunt ut facere cum id eius inventore  accusantium ut et repudiandae recusandae qui voluptatum perferendis illum  qui vel doloremque iste dolorem ea'
  },
  {
    description: 'laboriosam animi ut porro velit quasi sequi  necessitatibus provident incidunt blanditiis rem est ea repellendus natus  dolorem rerum blanditiis  corrupti tenetur dolorum eos molestiae est  expedita eius quidem  trerum alias illum labore inventore fuga distinctio  hic earum minima voluptatum cum animi sunt sit voluptates  est beatae vel est  fuga et ipsam ipsum velit repellendus  tdelectus soluta cum ipsam est dignissimos voluptas  tempora inventore omnis voluptatibus numquam ut aut qui  recusandae voluptates odit deserunt sint cupiditate  nesciunt itaque consectetur nihil repellat recusandae quo',
    title: 'nihil nesciunt ratione  culpa dolor et dolorum molestiae  velit rem ratione neque omnis minus magni pariatur quae'
  },
  {
    description: 'dolorem corrupti quo a neque ad dolorem  id et officia eligendi nihil  tenetur architecto eveniet  id asperiores quam non voluptatibus blanditiis repellendus omnis  tcum et itaque voluptatem voluptatibus quo porro  modi quisquam numquam ducimus enim officia dicta fuga rerum  quis eveniet labore quidem omnis temporibus atque  tempora id assumenda saepe eos voluptates ullam  tenetur dolores tempora architecto qui et deleniti  tnostrum numquam perspiciatis odio  velit delectus et ipsa libero asperiores perspiciatis quaerat  deserunt dolore earum beatae voluptate ut minus iste rerum',
    title: 'quaerat maiores soluta architecto voluptas et  accusamus et eum nisi aut quo occaecati id aut  quo repellat in minus vero'
  }
]

decisions_idx = 0
groups.each do |group|
  usrs = group.users.sample(2)
  user = usrs.first
  2.times do
    decision = Decision.create(
      title: decisions_data[decisions_idx][:title],
      description: decisions_data[decisions_idx][:description],
      user: user,
      decision_type: decision_type_democratic
    )

    group.users.where.not("users.id =#{user.id}").each { |u| UserDecision.create(user: u, decision: decision) }

    decisions_idx += 1
  end

  user = usrs.second
  decision = Decision.create(
    title: decisions_data[decisions_idx][:title],
    description: decisions_data[decisions_idx][:description],
    user: user,
    decision_type: decision_type_democratic
  )
  group.users.where.not("users.id =#{user.id}").each { |u| UserDecision.create(user: u, decision: decision) }

  decisions_idx += 1
end

alternatives_data = [
  {
    title: 'et ex iusto qui ad distinctio repellendus quisquam nostrum et id alias suscipit quibusdam voluptatibus quis pariatur et qui quia fuga et laudantium'
  },
  {
    title: 'enim enim fugit omnis officiis et aliquam maxime modi sit inventore tempora aliquid architecto qui maiores dolorum neque quidem repellendus ipsa'
  },
  {
    title: 'minus ratione expedita sint sunt quam assumenda incidunt eius quasi voluptates possimus omnis at totam earum sunt'
  },
  {
    title: 'delectus laudantium commodi eos doloribus molestiae quia aliquam at amet ut eos libero cum sint'
  },
  {
    title: 'commodi at tenetur quasi unde quia ea velit voluptatem nisi illo odit saepe reiciendis'
  },
  {
    title: 'qui distinctio itaque animi odit quia rem quisquam ut qui earum doloremque fugit tempora esse'
  },
  {
    title: 'amet culpa perspiciatis architecto consequatur sunt et velit quos quam recusandae quibusdam vitae sequi illo consequatur autem enim'
  },
  {
    title: 'sunt nulla tenetur molestiae a vero dolorem quia vel ad iusto commodi tenetur autem quis repellendus accusantium'
  },
  {
    title: 'labore aut iste aut architecto quia fuga sit enim totam quia nesciunt nihil et alias'
  },
  {
    title: 'tempore fuga quas sit hic quibusdam enim molestiae consectetur voluptate illo praesentium hic soluta maxime'
  },
  {
    title: 'sed praesentium qui neque optio consequatur et quos et qui perferendis aut impedit quidem ipsa vero maiores rerum eius quia debitis ut quasi'
  },
  {
    title: 'aut quibusdam ea ipsam laboriosam explicabo veritatis et qui omnis eos impedit'
  },
  {
    title: 'earum quas perspiciatis non minus numquam qui minima aut laborum et voluptatem dolores qui explicabo totam'
  },
  {
    title: 'officiis alias velit modi vitae rem omnis vero labore in atque et eaque'
  },
  {
    title: 'ratione quia odit nemo voluptate quas suscipit nobis ipsam dolorem dolor autem'
  },
  {
    title: 'voluptas deserunt quis nam alias placeat voluptas et molestias maxime esse dolores perspiciatis vitae quia beatae natus odio error'
  },
  {
    title: 'accusamus id alias nisi voluptas dolores laboriosam laborum veniam dolores illum amet optio odit doloremque dicta et necessitatibus dolore at voluptatem repudiandae laudantium et'
  },
  {
    title: 'qui alias aut ullam dolor incidunt et dolorum officiis odio doloremque temporibus pariatur voluptates'
  },
  {
    title: 'odio est saepe aliquid error ut quia laudantium animi nihil'
  },
  {
    title: 'cumque eos excepturi deleniti placeat incidunt et harum iste non earum consequatur nihil debitis neque sit et quia quis'
  },
  {
    title: 'non repellat error inventore impedit animi facere assumenda rerum quo doloremque ratione illum consequatur'
  },
  {
    title: 'voluptatum sunt molestias odit perferendis quod occaecati sit reprehenderit omnis quisquam rerum sunt et nostrum'
  },
  {
    title: 'aut non earum a qui natus quas reprehenderit non voluptatem esse expedita eius quis sint possimus repudiandae reiciendis voluptate'
  },
  {
    title: 'quis omnis occaecati quas excepturi quod nesciunt excepturi ea corrupti maiores possimus cum eaque reiciendis similique quo sed'
  },
  {
    title: 'nihil deleniti itaque at minima dolor et magnam ipsa deleniti laboriosam quia id est nihil qui non dolores repudiandae rerum'
  },
  {
    title: 'voluptatem dolores rerum officiis et sequi et est quis repellat aspernatur necessitatibus facere ut est cupiditate voluptate'
  },
  {
    title: 'cumque iure perspiciatis repellendus consequatur architecto voluptatem voluptas sunt eius est et enim voluptatem magnam reprehenderit quo'
  },
  {
    title: 'porro nihil ducimus soluta veniam quidem cum accusamus quia culpa aut fugiat modi doloribus dolores vel'
  },
  {
    title: 'consectetur asperiores recusandae tempora ea non odio velit aut molestias sed voluptatibus consequuntur aut'
  },
  {
    title: 'eos aliquid ut odit provident est debitis consectetur commodi libero sit est ex voluptatem et minima ex quibusdam officiis eos'
  },
  {
    title: 'facilis optio veritatis distinctio iusto aut rem sapiente et qui harum deleniti earum qui at nihil molestiae non et assumenda'
  },
  {
    title: 'nihil sed harum tempore quis deserunt sed quam ad eius consequatur'
  },
  {
    title: 'natus officia nobis laboriosam et animi minima alias expedita nesciunt ea doloribus doloremque aut'
  },
  {
    title: 'voluptatem velit eius est rerum tempora culpa officia sequi veniam qui nobis maxime debitis architecto libero inventore aspernatur qui quis et voluptatum voluptas voluptate'
  },
  {
    title: 'sit eum rerum ut ut debitis non ipsum voluptatem et perferendis est adipisci et'
  },
  {
    title: 'perspiciatis eos molestias magni esse rem rerum aut mollitia et et repudiandae maiores alias tenetur porro delectus officiis vel'
  },
  {
    title: 'nihil omnis dolorem nostrum aut et omnis voluptatum atque blanditiis quae deserunt veritatis quia'
  },
  {
    title: 'a id in non dolores eligendi voluptate eos blanditiis ut illum vel modi dolorum sapiente iusto molestias porro quaerat'
  },
  {
    title: 'ipsum quam voluptatem est quo placeat quasi qui et dolor laboriosam incidunt maiores esse'
  },
  {
    title: 'similique quasi beatae sequi odit est impedit aperiam architecto quia ratione vel est'
  },
  {
    title: 'aut occaecati ea id et ducimus veritatis aut quis sed nemo magni'
  },
  {
    title: 'sit iusto id nulla ut a est consequatur tempore optio omnis cum quo repellendus ut'
  },
  {
    title: 'consequatur laborum veritatis perspiciatis quibusdam consectetur enim adipisci nulla eum voluptatem possimus fuga excepturi magni recusandae ea temporibus eligendi maiores enim repellat voluptates minus reiciendis molestiae'
  },
  {
    title: 'quo neque ex est animi dolorum voluptatem possimus eum temporibus hic fuga corporis eos harum maxime ad eaque ea et consectetur soluta'
  },
  {
    title: 'dolorum debitis ipsam quisquam voluptas qui culpa quo ea alias accusantium necessitatibus est sint omnis error sed dolores itaque minus ut illo numquam'
  },
  {
    title: 'et sequi tempora culpa enim error est repellat quisquam exercitationem harum alias iure laboriosam quos'
  },
  {
    title: 'minus velit culpa praesentium deserunt qui quisquam qui voluptatem optio at ut aut dolore ratione distinctio quibusdam laudantium'
  },
  {
    title: 'provident omnis doloribus alias est id non sed omnis minima iure voluptas aliquam blanditiis sint'
  },
  {
    title: 'ut praesentium consequatur magnam quas quae rerum in nihil ad consectetur consequatur labore incidunt consequuntur accusantium in ex porro velit et voluptatibus'
  },
  {
    title: 'consequatur sunt enim repudiandae modi omnis ipsa deleniti aut quod iste nisi voluptatem nobis optio'
  },
  {
    title: 'voluptas velit quod hic repellat consectetur similique adipisci rem officiis qui et accusamus reprehenderit et vero earum aut'
  },
  {
    title: 'quis ut maxime id et dignissimos aut est autem asperiores quo quia optio quia'
  },
  {
    title: 'in quas ea nihil ullam excepturi tenetur suscipit excepturi rerum ullam quas consequatur ex iusto est excepturi ut dolorum ea voluptate laudantium odio'
  },
  {
    title: 'voluptatem non asperiores aut qui aut ut dolorem neque in tempora quia dolores voluptas et nam maxime a'
  },
  {
    title: 'voluptas totam nesciunt culpa corrupti non eaque sit ratione ullam quas eligendi in'
  },
  {
    title: 'aut ipsum rerum sit est et fugiat et reprehenderit esse repellendus quo at in voluptatem amet maiores omnis'
  },
  {
    title: 'ab facilis commodi esse fugit ipsam aut qui voluptatum qui est molestiae id vero sit'
  },
  {
    title: 'sint non necessitatibus ut amet deserunt aut omnis consequatur sequi corporis impedit accusantium omnis quia ut sed id ut'
  },
  {
    title: 'eum eos repellat accusantium odio vel odit natus deserunt quia nostrum eaque sit et incidunt eos sapiente sint molestias'
  },
  {
    title: 'nesciunt aliquam sapiente quia maiores qui exercitationem totam omnis repellendus assumenda asperiores et quia quidem iusto aut non molestias tenetur beatae'
  },
  {
    title: 'ea repellendus maxime aut et esse id tenetur aperiam hic nesciunt quia dolor vel ullam aut fugit dignissimos ut deserunt omnis ratione'
  },
  {
    title: 'quod ab dolor vero cupiditate sed odio eum cum accusamus error eos omnis vel animi ea ipsum amet iste'
  },
  {
    title: 'odio culpa quaerat corporis laboriosam non velit velit veniam qui et autem quos accusantium eveniet'
  },
  {
    title: 'officiis voluptatum exercitationem qui omnis rem ratione id natus quo praesentium sed modi perferendis quos sequi non minus aperiam sit unde dolorem excepturi enim eligendi'
  },
  {
    title: 'id veniam consequatur autem sunt voluptates mollitia ut deleniti voluptatem voluptatum et sequi esse molestiae blanditiis voluptas'
  },
  {
    title: 'et aut et quos voluptate id cumque non quae'
  },
  {
    title: 'vel quod repellendus velit illum laboriosam sint fugit eaque voluptates nemo itaque dolor est quis facere consequatur qui repellat sint a mollitia non'
  },
  {
    title: 'dolorem nam et aut repellendus temporibus repellendus quia nesciunt porro veritatis omnis vel maiores dolor necessitatibus officiis omnis odio'
  },
  {
    title: 'quidem officia amet id accusamus sed nulla harum ipsam sequi tempora velit perspiciatis quos accusantium'
  },
  {
    title: 'repellat dolorum nihil libero ut quia accusantium natus perspiciatis sunt ratione eum quia accusamus illum'
  },
  {
    title: 'aut ad quod sit fugiat incidunt rerum est perferendis et odit iusto quos quia'
  },
  {
    title: 'aut voluptatem culpa harum modi consequuntur sed aliquam voluptate et dolores ex tempora accusantium ratione omnis et vitae quae in maxime expedita'
  },
  {
    title: 'quam autem consequuntur et dolorem praesentium repudiandae quis eum quis maiores nam a ipsa et et tempora hic sunt'
  },
  {
    title: 'libero odit ratione alias nostrum repudiandae sapiente animi sunt voluptatibus sint ipsa laborum'
  },
  {
    title: 'minima ab error quos aut commodi qui numquam autem temporibus quo cupiditate sunt rerum cumque quos vitae enim illo consectetur hic ut voluptatibus cum'
  },
  {
    title: 'est fuga sequi aliquam nesciunt consequatur qui rerum quia minus quia aut in porro nulla qui quo omnis qui alias repellat reprehenderit'
  },
  {
    title: 'nesciunt ut omnis odit ipsum velit ut dolore eum optio deserunt dolore et fuga sit officiis similique voluptate'
  },
  {
    title: 'qui repellendus ipsam est repellat nam alias eveniet laudantium debitis placeat ea consequuntur et eveniet'
  },
  {
    title: 'temporibus omnis vero eos non voluptatem ut eveniet provident aut architecto eveniet est ut porro'
  },
  {
    title: 'non ut aut minima asperiores debitis ipsa beatae accusamus assumenda facere dolorem quaerat hic ab eaque facilis voluptas sed sint est'
  },
  {
    title: 'est deleniti rerum rerum a minima magni asperiores facilis ut rerum quo rerum ad vel et qui illum'
  },
  {
    title: 'quia nihil officia qui ut omnis perspiciatis doloremque expedita facere hic voluptas quia sit maxime soluta'
  },
  {
    title: 'quisquam similique aperiam omnis animi suscipit in id et officiis natus odio sequi dignissimos magni voluptas accusamus veniam deserunt'
  },
  {
    title: 'modi doloremque reiciendis molestiae qui maiores molestiae et minus maiores ea omnis dolorem hic repellendus officia qui'
  },
  {
    title: 'possimus occaecati sit saepe minus necessitatibus aut velit quia delectus harum asperiores autem in adipisci optio aperiam voluptatem quisquam et dolores aut'
  },
  {
    title: 'sint hic error enim eum sequi doloremque nesciunt consequuntur fugit et nulla eaque necessitatibus asperiores magni quibusdam eos non eveniet et et sit deleniti'
  },
  {
    title: 'repudiandae ea voluptas aut sapiente quis voluptate porro quis sit consequatur et fugit laudantium rerum'
  },
  {
    title: 'aspernatur et nam voluptas omnis saepe id qui ullam voluptas rem et voluptatem ipsa'
  },
  {
    title: 'et inventore reiciendis sunt sapiente et provident eum voluptatem adipisci asperiores quam'
  },
  {
    title: 'exercitationem occaecati at dignissimos temporibus inventore praesentium non sed facilis esse ut animi ut labore molestias harum'
  },
  {
    title: 'debitis repellendus quos dolore et adipisci omnis qui nostrum est'
  },
  {
    title: 'cum magni dolorem placeat non quisquam placeat vel dolores enim qui mollitia voluptatibus labore harum est dicta'
  },
  {
    title: 'quibusdam omnis nemo illum autem tempora voluptas consequatur cumque quia dignissimos recusandae tempore ut est magni mollitia omnis et tempora'
  },
  {
    title: 'nisi autem repudiandae id magni sint quas doloremque sunt quia qui eligendi perferendis eveniet sequi placeat'
  },
  {
    title: 'facilis ipsa iure unde quia quis illo odio aut repudiandae quo repellendus fugiat'
  },
  {
    title: 'amet iure maxime omnis quasi sit libero qui deleniti corrupti officiis id aliquam nemo dolorem numquam in fuga ea distinctio tempore qui'
  },
  {
    title: 'at reiciendis temporibus quae ducimus enim ipsum blanditiis ut voluptas quia cumque'
  },
  {
    title: 'qui deserunt assumenda delectus dolorem exercitationem harum distinctio veniam placeat occaecati'
  },
  {
    title: 'fuga qui amet voluptates alias nisi necessitatibus et asperiores ipsum sit magni laborum excepturi est repellat vel perferendis facere adipisci quae rerum iusto'
  },
  {
    title: 'quas est omnis est voluptatum labore earum perspiciatis vitae incidunt rerum non labore sed mollitia neque et officia aut'
  },
  {
    title: 'itaque asperiores commodi commodi in repellat omnis voluptatem impedit exercitationem rerum molestias dicta iste rerum'
  },
  {
    title: 'enim iure necessitatibus maiores harum molestias tenetur quia veniam sint eos perferendis qui impedit'
  },
  {
    title: 'dolor qui sint qui nesciunt numquam et doloremque eum minima earum aliquid dicta est voluptatum laboriosam aut qui et aut'
  },
  {
    title: 'quam aliquid et animi porro veniam qui numquam est ullam ut expedita consequatur ut ducimus reprehenderit quia dicta ut'
  },
  {
    title: 'quia neque qui id sunt temporibus et perspiciatis consequatur vel debitis sapiente rerum dignissimos enim'
  },
  {
    title: 'consectetur inventore fugit est laudantium illum fuga rem error excepturi pariatur aspernatur voluptatem inventore minima rerum iste quidem'
  },
  {
    title: 'et ut perspiciatis aut cumque id accusamus ipsum debitis eveniet rerum quia'
  },
  {
    title: 'ut in quia voluptas veritatis molestias quisquam omnis ipsa eos dolores minima amet accusamus ipsa aperiam fuga'
  },
  {
    title: 'facilis eligendi totam iure molestias amet dolores veritatis rerum consequatur ex temporibus nemo'
  },
  {
    title: 'natus beatae debitis deleniti nostrum velit beatae eum molestiae quis voluptatem accusamus reprehenderit id pariatur sequi'
  },
  {
    title: 'cupiditate mollitia et facere sint ut voluptatem voluptatem accusamus recusandae error voluptas et eum tempora quos et error sed illum modi accusamus'
  },
  {
    title: 'quidem optio eum iste ut consequatur voluptates sed et tempore laboriosam rem neque et eum'
  },
  {
    title: 'ex aliquid debitis ad quia deserunt est qui ad necessitatibus iure culpa iste aut ipsam veritatis eius laudantium esse non quo nihil earum quia nulla'
  },
  {
    title: 'praesentium maxime accusantium porro occaecati eum nemo quia perspiciatis impedit eligendi rem incidunt accusamus minus praesentium deleniti et iure et aut est'
  },
  {
    title: 'omnis iste aperiam fuga doloribus sequi rerum qui aut qui omnis ut provident illo asperiores rerum qui aut harum'
  },
  {
    title: 'quidem voluptas repudiandae facilis voluptatem vel consequuntur dicta atque quaerat tempore voluptatem magni numquam nesciunt'
  },
  {
    title: 'dolor quisquam tenetur doloribus omnis saepe vitae rem sint veritatis provident inventore natus et molestias'
  },
  {
    title: 'alias ipsam officia placeat cupiditate omnis quo accusantium eos ut et magni consectetur accusamus laborum nostrum'
  },
  {
    title: 'iure id beatae voluptatem dolor molestias exercitationem eligendi corrupti magnam id provident pariatur'
  },
  {
    title: 'eos praesentium necessitatibus aspernatur eaque excepturi vel eius fugiat commodi tenetur consectetur nihil eligendi deleniti nesciunt'
  },
  {
    title: 'voluptas et eius labore molestiae vero qui corporis qui veniam nulla similique perferendis ut modi soluta quidem facilis ipsum'
  },
  {
    title: 'hic itaque eum maiores quas ea quae corrupti incidunt quas'
  },
  {
    title: 'magnam aut voluptates maiores iusto repellat atque officiis aut et magni vel rem et iure ut sit a omnis modi veniam quo'
  },
  {
    title: 'magnam quas similique nihil excepturi nemo rerum placeat est voluptas omnis ut quo eligendi distinctio id placeat modi molestias'
  },
  {
    title: 'quis vitae voluptatem iusto saepe officia neque facilis odit vitae autem quibusdam temporibus deserunt ex quo quos quis'
  },
  {
    title: 'assumenda eos quis minima omnis dolores nisi autem fuga consectetur placeat quaerat et molestiae adipisci non voluptate dolore autem'
  },
  {
    title: 'ut tempore cupiditate eum beatae quia tempora corporis provident quia natus architecto saepe vel sequi velit modi dolore tempora ipsum'
  },
  {
    title: 'omnis minima expedita qui sint quisquam neque velit autem voluptatem earum dolor velit quaerat dolor eligendi adipisci'
  },
  {
    title: 'minima dolores ut dicta sit autem vero quas tenetur earum impedit eos minus quibusdam ea sed voluptas commodi a consequatur nemo et qui rerum'
  },
  {
    title: 'veniam perspiciatis consequuntur nihil placeat voluptatum nihil laborum quam voluptatibus itaque nostrum illo porro'
  },
  {
    title: 'eaque rerum itaque non voluptas animi nobis voluptates iure aut nobis ea totam qui dolores laboriosam quas sapiente dolor voluptate id porro'
  },
  {
    title: 'rem aperiam voluptas incidunt mollitia totam dolorem dolores veritatis deleniti et ducimus et porro est aliquid voluptatibus'
  },
  {
    title: 'rerum eum perferendis sit ad magnam possimus tempora consequuntur sequi ex non impedit saepe ducimus soluta excepturi'
  },
  {
    title: 'laboriosam sint minima repellendus sequi id facilis et vitae nihil molestiae hic accusantium quos et quod nesciunt ut et'
  },
  {
    title: 'occaecati veniam dolorem dignissimos aut reiciendis dolor temporibus libero sint minima quia illum quia consequatur quod qui aut'
  },
  {
    title: 'sit quia labore amet porro quia accusantium saepe qui et magnam esse recusandae aut'
  },
  {
    title: 'impedit alias quia et numquam corrupti deleniti et ipsum est modi cumque recusandae iste delectus quisquam iusto quia et voluptates aliquam'
  },
  {
    title: 'dolores quidem labore recusandae et ea ut sint rerum dolores minus ipsa nemo et quia qui'
  },
  {
    title: 'distinctio dignissimos non delectus autem veritatis ea quia voluptatum ut dolores aliquid maxime error voluptatem harum consequuntur sequi ipsam'
  },
  {
    title: 'natus sapiente ut accusantium necessitatibus quos beatae impedit animi cupiditate sequi error culpa modi eligendi et'
  },
  {
    title: 'rerum iure consequuntur accusantium eaque blanditiis dicta optio fugiat in quos repudiandae est rerum quibusdam officiis'
  },
  {
    title: 'et atque esse earum doloremque ex minus enim a qui numquam praesentium expedita aut iste nesciunt exercitationem quo ratione inventore magni'
  },
  {
    title: 'voluptatem est facere est maiores consequuntur dolor qui sunt facere optio'
  },
  {
    title: 'et soluta repudiandae nostrum vero quia quia adipisci deserunt eum totam qui et sed consequatur'
  },
  {
    title: 'earum omnis ea dolorem quis modi dolorum beatae doloremque aliquam sapiente incidunt fugit recusandae'
  },
  {
    title: 'eos sint fugit et excepturi fuga necessitatibus voluptatem repudiandae aliquid deserunt sequi fugit sit modi temporibus voluptas ut quibusdam'
  },
  {
    title: 'officia facilis ipsa vitae velit assumenda occaecati beatae quidem eum recusandae itaque neque eaque quia et sit ea et'
  },
  {
    title: 'esse corporis earum blanditiis cumque placeat nemo dolores quo neque adipisci corporis fugiat cum enim sapiente'
  },
  {
    title: 'at quo veniam a sequi et odit labore quidem debitis voluptatem cumque quasi perspiciatis unde nisi quos accusantium rerum reprehenderit quam dolor maiores nam modi'
  },
  {
    title: 'quaerat animi est modi ut ut et provident est cum quod animi aspernatur quae veritatis'
  },
  {
    title: 'ab cumque quia nobis deserunt magnam asperiores impedit nobis rerum omnis numquam'
  },
  {
    title: 'corporis quia doloremque atque aliquam ut est neque placeat in excepturi consequatur numquam laboriosam consectetur quas quo sapiente'
  },
  {
    title: 'qui atque voluptate et qui odio quo quod consequuntur minus dignissimos est quas aut eligendi inventore suscipit'
  },
  {
    title: 'explicabo et quia maxime omnis vitae exercitationem dicta aliquid in inventore aspernatur vel doloremque culpa rem vel voluptas unde'
  },
  {
    title: 'hic et ut sapiente vero eum vero tempore quibusdam soluta doloremque et eius fugit unde facilis repellat'
  },
  {
    title: 'aut dolor reprehenderit aut mollitia voluptatem sed officia nobis incidunt aut aut saepe molestias iure a aut'
  },
  {
    title: 'consequatur qui sit consequuntur non sapiente molestiae qui in et totam ratione reprehenderit enim nobis possimus ut rem qui autem'
  },
  {
    title: 'est beatae dolore quis voluptatem omnis id placeat vel facilis molestias error ut dignissimos similique neque'
  },
  {
    title: 'quae voluptatum ullam iusto excepturi doloribus quo voluptatum quia porro praesentium consequatur sed omnis beatae'
  },
  {
    title: 'minus quae libero rerum autem quas quo cum accusamus beatae unde tempore sit quae qui aperiam voluptates'
  },
  {
    title: 'rerum sit blanditiis culpa excepturi perferendis nulla nam in quis iste ipsam qui non quo facere enim'
  },
  {
    title: 'molestiae optio enim voluptas aliquam quo consequuntur cum autem quos sint neque impedit delectus quisquam accusantium sed laborum corrupti mollitia'
  },
  {
    title: 'modi voluptatem voluptatem omnis ipsum esse quibusdam velit magni minima doloremque quae accusantium et a'
  },
  {
    title: 'amet dolorum qui at animi a rerum occaecati non dignissimos placeat provident temporibus et aut consequatur similique ut corporis dolores'
  },
  {
    title: 'exercitationem cupiditate aut et nemo earum qui quibusdam repudiandae commodi beatae rerum impedit vero rem ullam rerum'
  },
  {
    title: 'quas cumque consectetur sed enim natus consequatur maiores vel eveniet odit sed fugiat eveniet eaque dolor consequuntur maiores'
  },
  {
    title: 'ut ut officiis dolores quos sed possimus est et quis quas aperiam ipsum ad quis veniam'
  },
  {
    title: 'quia possimus voluptatum iste cumque maiores expedita laudantium et laborum ab est ex quidem libero impedit deserunt rerum commodi expedita'
  },
  {
    title: 'sapiente dolores vel delectus rem voluptatum ut recusandae amet provident consequuntur possimus porro id vel maxime quia vero inventore distinctio odio'
  },
  {
    title: 'fuga nostrum qui velit totam placeat nisi veniam aut tenetur beatae molestiae sed maxime voluptates'
  },
  {
    title: 'rem facere adipisci ea atque pariatur voluptas ipsam porro eos rerum dolorem minus et ut commodi qui et'
  },
  {
    title: 'quam ut molestias rerum voluptatem est laborum quibusdam ut sed saepe quia et perspiciatis veniam quo dignissimos'
  },
  {
    title: 'dolores recusandae consequuntur placeat reprehenderit dolor quo ipsa porro sit ipsam atque nostrum et sed sint dolores aliquid et aut laudantium aut temporibus'
  },
  {
    title: 'quia ea recusandae ipsa a sit quos nobis beatae expedita veniam dolores harum ut quae placeat maxime unde'
  },
  {
    title: 'ut quis odio aliquam animi ipsum voluptas ullam eius excepturi quia deleniti ex et ut ea'
  },
  {
    title: 'accusamus a maxime consequatur officia sunt praesentium fuga adipisci omnis mollitia debitis nemo et qui ut dolore qui'
  },
  {
    title: 'corrupti qui at provident voluptas error eos beatae molestias quam quae sit officiis necessitatibus sed provident aspernatur iste et a magni qui et quia'
  },
  {
    title: 'exercitationem repellendus incidunt voluptatem nostrum saepe impedit explicabo est molestiae reiciendis fugit cumque maxime quaerat'
  },
  {
    title: 'maiores laborum aut error ipsum reprehenderit optio nobis aut quo et quis amet in est dolorem quis minus'
  },
  {
    title: 'voluptatum nostrum dolorem quia rerum itaque expedita soluta nostrum natus nulla doloribus eum accusamus eaque et'
  }
]

#  Alternatives
alternatives_idx_min = 0
alternatives_idx_max = 3
Decision.all.each do |decision|
  (alternatives_idx_min...alternatives_idx_max).each do |alternative_idx|
    decision.alternatives.create(title: alternatives_data[alternative_idx][:title])
  end
  alternatives_idx_min += 3
  alternatives_idx_max += 3
end

# Votes
Group.all.each do |group|
  group_users_id = group.users.map(&:id)
  group_decisions = Decision.where(user_id: group_users_id)
  group_decisions.each do |decision|
    alternatives = decision.alternatives
    group.users.each { |user| Vote.create(user: user, alternative: alternatives.sample) }
  end
end

Group.all.each do |group|
  group_users_id = group.users.map(&:id)
  group_decisions = Decision.where(user_id: group_users_id)

  group_decisions.each do |decision|
    messages_for_decision = [0, 1, 2, 3, 4, 5].sample
    (0..messages_for_decision).each do
      Message.create(user: group.users.sample, decision: decision, message: Faker::GreekPhilosophers.quote)
    end
  end
end
