# frozen_string_literal: true

user = User.create!(
  first_name: 'foo',
  last_name: 'bar',
  email: 'foo@bar.com',
  password: '123456',
  cpf: '1234567890',
  address: 'foo',
  address_number: '42',
  zip_code: '123',
  city: 'foo',
  state: 'foo'
)

User.create!(
  first_name: 'john',
  last_name: 'doe',
  email: 'john@doe.com',
  password: '123456',
  cpf: '1234567890',
  address: 'foo',
  address_number: '42',
  zip_code: '123',
  city: 'foo',
  state: 'foo'
)

Subscription.create!(
  user: user,
  recurrence: 'monthly',
  state: 'active'
)

section_events = Section.create!(
  name: 'Eventos & Pesquisa',
  description: 'some section description',
  image_url: 'http://image.ibb.co/h3KBZG/Icone_Eventose_Pesquisas.png'
)

section = Section.create!(
  name: 'Vida em Equilíbrio',
  description: 'some section description',
  image_url: 'http://image.ibb.co/ek13gw/Icone_Vidaem_Equilibrio.png'
)

section_courses = Section.create!(
  name: 'Pangeas Plus',
  description: 'some section description',
  image_url: 'http://image.ibb.co/dhkkuG/Icone_Cursos_Pangeas.png'
)

subsection_events = Subsection.create!(
  name: 'events',
  section: section_events
)

subsection_courses = Subsection.create!(
  name: 'courses',
  section: section_courses
)

subsection_mente = Subsection.create!(
  name: 'Mente Sã',
  section: section
)

subsection_corpo = Subsection.create!(
  name: 'Corpo São',
  section: section
)

subsection_espirito = Subsection.create!(
  name: 'Espírito Livre',
  section: section
)

subsection_energia = Subsection.create!(
  name: 'Energia em Equilíbrio',
  section: section
)

subsection_terra = Subsection.create!(
  name: 'Terra Viva',
  section: section
)

category_events = Category.create!(
  name: 'Eventos',
  description: 'some category description',
  subsection: subsection_events
)

category_other_events = Category.create!(
  name: 'Outros Eventos',
  description: 'some category description',
  subsection: subsection_events
)

category_talks = Category.create!(
  name: 'Palestras Avulsas',
  description: 'some category description',
  subsection: subsection_events
)

Course.create!(
  name: 'Conhece-te (Educação Emocional)',
  description: 'O curso de educação emocional Conhece-te é uma capacitação'\
  ' composta por 7 módulos. Nessas aulas online a Autoconsciência é vivenciada'\
  ' na prática para proporcionar uma jornada com foco no desenvolvimento'\
  ' intrapessoal. É dentro desse profundo processo de autoconhecimento que a'\
  ' vida ganha nova base.',
  lesson_detail: 'Cada aula do curso Conhece-te segue uma sequência de'\
  ' aprendizado e aprofundamento, mas também pode ser aproveitada como um'\
  ' módulo individual de conhecimento sobre a sua temática. Então, aproveite'\
  ' tudo o que organizamos para você ampliar sua visão sobre a saúde.',
  subsection: subsection_courses,
  vimeo_id: '163721649',
  image_url: 'https://image.ibb.co/cuYQww/conhecete.png',
  instructor: 'Dr. Carlos Braghini',
  credentials: 'Brraghini é médico e tem sua pesquisa focada no papel da'\
  ' alimentação e do meio ambiente no envelhecimento e na longevidade. É'\
  ' também fisiologista, quiropraxista, membro da BARM, criador do projeto'\
  ' Saúde na Cozinha (com série aqui na Pangeas) e prof. da Pós-Graduação da'\
  ' QuantumBIO.',
  price: '200',
  discount_price: '100',
  sorting: 3
)

Course.create!(
  name: 'Meditação Guiada iAwake',
  description: 'O ritmo é a linguagem básica da natureza. Agora, imagine usar'\
  ' todo o poder dessa ressonância de maneira consciente para definir seu'\
  ' humor e marcar os estados das ondas cerebrais que você deseja. É isso que'\
  ' estamos trazendo aqui. Você pode acessar todos os áudios e aulas.',
  lesson_detail: 'Cada aula do curso Meditação Guiada iAwake é um módulo'\
  ' individual de conhecimento sobre uma temática diferente. Ou seja, você'\
  ' pode escolher o que busca aperfeiçoar com as ferramentas de meditação e'\
  ' começar pela parte que preferir.',
  subsection: subsection_courses,
  vimeo_id: '163721649',
  image_url: 'https://image.ibb.co/ccjyGw/meditacao_iawake.png',
  instructor: 'Dr. Carlos Braghini',
  credentials: 'Brraghini é médico e tem sua pesquisa focada no papel da'\
  ' alimentação e do meio ambiente no envelhecimento e na longevidade. É'\
  ' também fisiologista, quiropraxista, membro da BARM, criador do projeto'\
  ' Saúde na Cozinha (com série aqui na Pangeas) e prof. da Pós-Graduação da'\
  ' QuantumBIO.',
  price: '360',
  discount_price: '300',
  sorting: 1
)

course1 = Course.create!(
  name: 'Ecologia Celular',
  description: 'O Dr. Carlos Braghini e a Pangeas tem a alegria de trazer a'\
  ' atualização de todos os estudos que deram origem ao livro Ecologia Celular'\
  ' agora em um formato de video aulas. Aprenda tudo sobre a visão sistêmica'\
  ' da saúde onde quer que você esteja.',
  lesson_detail: 'Cada aula do curso Ecologia Celular segue uma sequência de'\
  ' aprendizado e aprofundamento, mas também pode ser aproveitada como um'\
  ' módulo individual de conhecimento sobre a sua temática. Então, aproveite'\
  ' tudo o que organizamos para você ampliar sua visão sobre a saúde.',
  subsection: subsection_courses,
  vimeo_id: '163721649',
  image_url: 'https://image.ibb.co/jLT3ib/ecologia_celular.png',
  instructor: 'Dr. Carlos Braghini',
  credentials: 'Braghini é médico e tem sua pesquisa focada no papel da'\
  ' alimentação e do meio ambiente no envelhecimento e na longevidade. É'\
  ' também fisiologista, quiropraxista, membro da BARM, criador do projeto'\
  ' Saúde na Cozinha (com série aqui na Pangeas) e prof. da Pós-Graduação da'\
  ' QuantumBIO.',
  price: '300',
  discount_price: '240',
  sorting: 2
)

course2 = Course.create!(
  name: 'Alfabetização Emocional',
  description: 'Hoje aprendemos muito sobre informática, matemática, etc. Mas'\
  ' pouco sabemos sobre o que realmente define nossa vida como positiva ou'\
  ' negativa: as emoções. Para vencermos essa limitação, a Pangeas e o Dr.'\
  ' Jorge Carvajal tem a alegria de apresentar um curso completo de 4 aulas'\
  ' focado na Alfabetização Emocional.',
  lesson_detail: '',
  subsection: subsection_courses,
  vimeo_id: '242497343',
  image_url: 'https://image.ibb.co/iZAGQ6/'\
    'Thumbs_Pangeas_Alfabetizacao_Emocional_Parte_1_640.jpg',
  instructor: 'Dr. Jorge Carvajal',
  credentials: 'Médico, cirurgião, poeta, inventor, escritor… Dr. Jorge'\
  ' Carvajal é um médico de renome mundial que dedica seu à investigação das'\
  ' mais variadas formas de ciências e culturas curativas por todo o planeta.'\
  ' Nos seus mais de 40 anos nessa jornada já passou por ensinamentos que vão'\
  ' desde a convivência por anos na selva aprendendo com as culturas'\
  ' ameríndias, xamânicas e orientais até o aprendizado nas faculdades mais'\
  ' tradicionais da Europa (como a Universidade de Andaluzia, sua alma mater).'\
  ' Seu trabalho atual está centrado na Sintergética (conceito que criou a'\
  ' partir de toda sua experiência integralista).',
  price: '150',
  discount_price: '95',
  sorting: 4
)

category_educacao = Category.create!(
  name: 'Educação Emocional & Comunicação Não Violenta',
  description: 'some category description',
  subsection: subsection_mente
)

Category.create!(
  name: 'Meditação & Exercícios para a Mente',
  description: 'some category description',
  subsection: subsection_mente
)

Category.create!(
  name: 'Alimentação',
  description: 'some category description',
  subsection: subsection_corpo
)

Category.create!(
  name: 'Consciência Corporal e Exercícios',
  description: 'some category description',
  subsection: subsection_corpo
)

Category.create!(
  name: 'Espiritualidade',
  description: 'some category description',
  subsection: subsection_espirito
)

Category.create!(
  name: 'Humanização, Fé e Ciência',
  description: 'some category description',
  subsection: subsection_espirito
)

Category.create!(
  name: 'Vida Integral',
  description: 'some category description',
  subsection: subsection_energia
)

Category.create!(
  name: 'Humanização, Fé e Ciência',
  description: 'some category description',
  subsection: subsection_energia
)

Category.create!(
  name: 'Vida Verde e Sustentabilidade',
  description: 'some category description',
  subsection: subsection_terra
)

series = Series.create!(
  name: 'Os Portais da Alma',
  description: 'some series description',
  category: category_educacao
)

Video.create!(
  name: 'Conheça a Psicologia Quântica',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/animals',
  category: category_educacao
)

Video.create!(
  name: 'Parto Humanizado',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/sports',
  highlighted: true,
  category: category_educacao
)

Video.create!(
  name: 'Pocket Show Banda Curasom',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/people',
  category: category_educacao
)

Video.create!(
  name: 'Encontro com Sri Prem Baba',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/abstract',
  category: category_educacao
)

Video.create!(
  name: 'Os Portais da Alma parte 1',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/nature',
  series: series,
  sorting: 1
)

Video.create!(
  name: 'Os Portais da Alma parte 2',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/nature',
  series: series,
  sorting: 2
)

event1 = Series.create!(
  name: 'Destaque Psicologia Quântica',
  description: 'some series description',
  category: category_events,
  highlighted: true,
  image_url: 'http://lorempixel.com/573/322/nature'
)

event2a = Series.create!(
  name: 'Primeiro Congresso Internacional',
  description: 'some series description',
  category: category_events,
  image_url: 'http://lorempixel.com/573/322/nature'
)

Series.create!(
  name: '5° Congresso Saúde Terapia Quântica',
  description: 'some series description',
  category: category_events,
  image_url: 'http://lorempixel.com/573/322/nature'
)

Series.create!(
  name: 'Primeiro Congresso Internacional',
  description: 'some series description',
  category: category_events,
  image_url: 'http://lorempixel.com/573/322/nature'
)

Series.create!(
  name: '5° Congresso Saúde Terapia Quântica',
  description: 'some series description',
  category: category_events,
  image_url: 'http://lorempixel.com/573/322/nature'
)

Series.create!(
  name: 'Primeiro Congresso Internacional',
  description: 'some series description',
  category: category_other_events,
  image_url: 'http://lorempixel.com/573/322/nature'
)

Series.create!(
  name: '5° Congresso Saúde Terapia Quântica',
  description: 'some series description',
  category: category_other_events,
  image_url: 'http://lorempixel.com/573/322/nature'
)

Series.create!(
  name: 'Primeiro Congresso Internacional',
  description: 'some series description',
  category: category_other_events,
  image_url: 'http://lorempixel.com/573/322/nature'
)

Series.create!(
  name: '5° Congresso Saúde Terapia Quântica',
  description: 'some series description',
  category: category_other_events,
  image_url: 'http://lorempixel.com/573/322/nature'
)

Series.create!(
  name: '7° Congresso Saúde Terapia Quântica',
  description: 'some series description',
  category: category_other_events,
  image_url: 'http://lorempixel.com/573/322/nature'
)

Series.create!(
  name: 'Palestra avulsa 1',
  description: 'some series description',
  category: category_talks,
  image_url: 'http://lorempixel.com/573/322/nature'
)

Video.create!(
  name: 'Palestra 1 Evento',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/nature',
  series: event1
)

Video.create!(
  name: 'Palestra 1 Evento',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/nature',
  series: event2a
)

Video.create!(
  name: 'Palestra 1 Evento',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/nature',
  series: event2a
)

Video.create!(
  name: 'Palestra 1 Evento',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/nature',
  series: event2a
)

Video.create!(
  name: 'Palestra 1 Evento',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/nature',
  series: event2a,
  category: category_events
)

Video.create!(
  name: 'Palestra 1 Avulsa',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/nature',
  category: category_talks
)

Video.create!(
  name: 'Palestra 2 Avulsa',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/nature',
  category: category_talks
)

Video.create!(
  name: 'Palestra 3 Avulsa',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/nature',
  category: category_talks
)

Video.create!(
  name: 'Palestra 4 Avulsa',
  description: 'Amig Goswami é uma das maiores autoridades mundiais em'\
  ' Psicologia Quântica. Nesta palestra, ele faz um contraponto entre a'\
  ' Psicologia tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  information: 'Palestrante: Amit Goswami
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'http://lorempixel.com/573/322/nature',
  category: category_talks
)

Video.create!(
  name: 'Aula 1',
  sorting: 1,
  description: 'A Anatomia é a ciência que estuda as estruturas do corpo'\
  ' humano e é considerada como fundamento de toda a arte da medicina.'\
  ' Embora, o interesse da anatomia implique a estrutura dos órgãos,'\
  ' estrutura e função relacionam-se intimamente, como se verifica na'\
  ' comparação existente entre a geografia e a história, ou anatomia e'\
  ' fisiologia. O ensino da anatomia clássica tem sido realizado em todas'\
  ' as universidades do mundo por meio de métodos de dissecção de peças de'\
  ' cadáveres formolizados.',
  information: 'Dr Braghini
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'https://image.ibb.co/jLT3ib/ecologia_celular.png',
  course: course1
)

Video.create!(
  name: 'Aula 2',
  sorting: 2,
  description: 'A Anatomia é a ciência que estuda as estruturas do corpo'\
  ' humano e é considerada como fundamento de toda a arte da medicina.'\
  ' Embora, o interesse da anatomia implique a estrutura dos órgãos,'\
  ' estrutura e função relacionam-se intimamente, como se verifica na'\
  ' comparação existente entre a geografia e a história, ou anatomia e'\
  ' fisiologia. O ensino da anatomia clássica tem sido realizado em todas'\
  ' as universidades do mundo por meio de métodos de dissecção de peças de'\
  ' cadáveres formolizados.',
  information: 'Dr Braghini
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'https://image.ibb.co/jLT3ib/ecologia_celular.png',
  course: course1
)

Video.create!(
  name: 'Aula 3',
  sorting: 3,
  description: 'A Anatomia é a ciência que estuda as estruturas do corpo'\
  ' humano e é considerada como fundamento de toda a arte da medicina.'\
  ' Embora, o interesse da anatomia implique a estrutura dos órgãos,'\
  ' estrutura e função relacionam-se intimamente, como se verifica na'\
  ' comparação existente entre a geografia e a história, ou anatomia e'\
  ' fisiologia. O ensino da anatomia clássica tem sido realizado em todas'\
  ' as universidades do mundo por meio de métodos de dissecção de peças de'\
  ' cadáveres formolizados.',
  information: 'Dr Braghini
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'https://image.ibb.co/jLT3ib/ecologia_celular.png',
  course: course1
)

Video.create!(
  name: 'Aula 4',
  sorting: 4,
  description: 'A Anatomia é a ciência que estuda as estruturas do corpo'\
  ' humano e é considerada como fundamento de toda a arte da medicina.'\
  ' Embora, o interesse da anatomia implique a estrutura dos órgãos,'\
  ' estrutura e função relacionam-se intimamente, como se verifica na'\
  ' comparação existente entre a geografia e a história, ou anatomia e'\
  ' fisiologia. O ensino da anatomia clássica tem sido realizado em todas'\
  ' as universidades do mundo por meio de métodos de dissecção de peças de'\
  ' cadáveres formolizados.',
  information: 'Dr Braghini
  Tema da Palestra: Psicologia Quântica Integrativa
  Local: Palácio dos Festivais - Gramado
  Evento: Conferência Internacional de Saúde Quântica',
  synopsys: 'Amig Goswami é uma das maiores autoridades mundiais em Psicologia'\
  ' Quântica. Nesta palestra, ele faz um contraponto entre a Psicologia'\
  ' tradicional e a Quântica. Ele sua fala ele mostra que o modelo'\
  ' comportamental',
  bio: 'Ph.D em Física Quântica, Amit Goswami ficou mundialmente famoso pela'\
  ' sua participação no filme "Quem somos nós?". Com diversos livros'\
  ' publicados e vários artigos científicos, o trabalho de Amit traz',
  vimeo_id: '163721649',
  image_url: 'https://image.ibb.co/jLT3ib/ecologia_celular.png',
  course: course1
)

Video.create!(
  name: 'Aula 1',
  sorting: 1,
  description: 'Nesse mundo moderno, tecnológico e competitivo nos ensinaram'\
  ' muito sobre matemática, história, línguas e informática. Mas não nos'\
  ' ensinaram nada sobre as emoções. Por isso, o melhor é reconhecermos de'\
  ' uma vez por todas: somos incontáveis analfabetos emocionais.'\
  ' No episódio 1 nós vemos: Como as emoções modificam as nossas funções'\
  ' corporais; O uso da emoção para superar a própria genética; As funções'\
  ' emocionais para gerar ou bloquear doenças; A importância do carinho e da'\
  ' fé; O que é a Resposta de Relaxamento.',
  information: '',
  synopsys: '',
  bio: '',
  vimeo_id: '242497343',
  image_url: 'https://image.ibb.co/iZAGQ6/'\
    'Thumbs_Pangeas_Alfabetizacao_Emocional_Parte_1_640.jpg',
  course: course2
)

Video.create!(
  name: 'Aula 2',
  sorting: 2,
  description: 'Enquanto crescíamos, pais, professores, filmes e muitas outras'\
  ' influências nos ensinaram muito sobre a vida. Mas não nos ensinaram nada'\
  ' sobre as emoções. O resultado? Incontáveis analfabetos emocionais.'\
  ' No episódio 2 nós vemos: A importância do prazer e da motivação; Como'\
  ' superar a mentalidade do “viver para ter”; Encontrar o prazer que gera'\
  ' liberdade; Descobrindo o medo do castigo; Como a nossa emoção influencia'\
  ' nosso entorno.',
  information: '',
  synopsys: '',
  bio: '',
  vimeo_id: '242497343',
  image_url: 'https://image.ibb.co/iZAGQ6/'\
    'Thumbs_Pangeas_Alfabetizacao_Emocional_Parte_1_640.jpg',
  course: course2
)

Video.create!(
  name: 'Aula 3',
  sorting: 3,
  description: 'Enquanto crescíamos, pais, professores, filmes e muitas outras'\
  ' influências nos ensinaram muito sobre a vida. Mas não nos ensinaram nada'\
  ' sobre as emoções. O resultado? Incontáveis analfabetos emocionais.'\
  ' No episódio 3 nós vemos: Como as emoções equilibram o cérebro; Os caminhos'\
  ' para obter a Resposta de Relaxamento; As 3 falsas crenças; As ferramentas'\
  ' para uma mentalidade positiva; Entendendo a emoção por trás do vício e da'\
  ' compulsão.',
  information: '',
  synopsys: '',
  bio: '',
  vimeo_id: '242497343',
  image_url: 'https://image.ibb.co/iZAGQ6/'\
    'Thumbs_Pangeas_Alfabetizacao_Emocional_Parte_1_640.jpg',
  course: course2
)

Video.create!(
  name: 'Aula 4',
  sorting: 4,
  description: 'Enquanto crescíamos, pais, professores, filmes e muitas outras'\
  ' influências nos ensinaram muito sobre a vida. Mas não nos ensinaram nada'\
  ' sobre as emoções. O resultado? Incontáveis analfabetos emocionais.'\
  ' No episódio 4 nós vemos: A energia e o movimento das emoções; Superando o'\
  ' medo; Compreendendo o amor; O que significa usar uma emoção para carregar'\
  ' o coração; Alcançando a capacidade de ser alegre.',
  information: '',
  synopsys: '',
  bio: '',
  vimeo_id: '242497343',
  image_url: 'https://image.ibb.co/iZAGQ6/'\
    'Thumbs_Pangeas_Alfabetizacao_Emocional_Parte_1_640.jpg',
  course: course2
)
