# Создание модуля "Основы копирайтинга"
course_module = CourseModule.create(
  name: 'День 1: Введение в копирайтинг',
  description: 'Введение в копирайтинг и основные типы копирайтинга.'
)

## Создание урока "Что такое копирайтинг?"
lesson = Lesson.create(
  course_module_id: course_module.id,
  name: 'Что такое копирайтинг?',
  content: 'Обзор определения и целей копирайтинга.'
)

### Создание задания
Task.create(
  lesson_id: lesson.id,
  description: 'Напишите убедительное описание для кофемашины, сосредоточившись на чувствах, которые она вызывает, а не на технических характеристиках.',
  example: 'Представьте утро, которое начинается с аромата свежесваренного кофе. Наша кофемашина не просто варит кофе; она приглашает вас насладиться каждым мгновением уюта. С каждым глотком вы чувствуете, как оживает ваш дух, а день обещает быть прекрасным.'
)

### Создание ресурса
Resource.create(
  lesson_id: lesson.id,
  name: 'Copyblogger: Copywriting 101',
  url: 'https://www.copyblogger.com/copywriting-101/',
  resource_type: 'article'
)

### Создание ресурса
Resource.create(
  lesson_id: lesson.id,
  name: 'Копирайтинг',
  content: 'Копирайтинг – это мост между продуктом и потребителем. Каждое слово, которое вы пишете, должно убеждать и вести к действию.',
  resource_type: 'note'
)

## Создание урока "История копирайтинга"
lesson = Lesson.create(
  course_module_id: course_module.id,
  name: 'История копирайтинга',
  content: 'Углубитесь в историю копирайтинга. Изучите, как развивалась эта профессия от ранних форм рекламы до современных цифровых стратегий. Понимание исторического контекста поможет вам лучше осознать, какие подходы остаются актуальными и почему.'
)
### Создание ресурса
Resource.create(
  lesson_id: lesson.id,
  name: 'История копирайтинга от копирайтера',
  url: 'https://sharovtext.ru/kopirajting-istoriya-sovremennost-perspektivy/',
  content: 'Знание истории позволяет не только понять, откуда пришли современные практики, но и предвидеть, куда они могут развиваться.',
  resource_type: 'article'
)

### Задание
Task.create(
  lesson_id: lesson.id,
  description: 'Выберите одну исторически значимую рекламную кампанию XX или XXI века. Проанализируйте её, обратив внимание на используемые приемы копирайтинга, целевую аудиторию и общее сообщение. Обсудите, как эти элементы способствовали её успеху.',
  example: ''
)

# Создание модуля "День 2: Основные типы копирайтинга"
course_module = CourseModule.create(
  name: 'День 2: Основные типы копирайтинга',
  description: 'Изучение основных типов копирайтинга: SEO, SMM, и контент-маркетинг.'
)

# Создание уроков
lessons = {
  seo: {
    name: 'SEO копирайтинг',
    content: 'Изучите основы SEO на Moz.'
  },
  smm: {
    name: 'SMM копирайтинг',
    content: 'Ознакомьтесь с курсом по социальным медиа на HubSpot.'
  },
  content_marketing: {
    name: 'Копирайтинг для контент-маркетинга',
    content: 'Изучите стратегии на Content Marketing Institute.'
  }
}

lessons.each do |key, attrs|
  lesson = Lesson.create(
    course_module_id: course_module.id,
    name: attrs[:name],
    content: attrs[:content]
  )

  # Создание задания для каждого урока
  Task.create(
    lesson_id: lesson.id,
    description: "Напишите короткий текст, используя принципы #{key} копирайтинга. Старайтесь применить изученные концепции и техники.",
    example: '' # Пример можно добавить в зависимости от типа задания
  )

  # Создание ресурсов для каждого урока
  Resource.create([
                    {
                      lesson_id: lesson.id,
                      name: "Основы #{key} на примере",
                      url: case key
                           when :seo
                             'https://moz.com/beginners-guide-to-seo'
                           when :smm
                             'https://academy.hubspot.com/courses/social-media'
                           when :content_marketing
                             'https://contentmarketinginstitute.com/developing-a-strategy/'
                           end,
                      content: '',
                      resource_type: 'article'
                    },
                    {
                      lesson_id: lesson.id,
                      name: "Замечание по #{key} копирайтингу",
                      content: case key
                               when :seo
                                 'Главный принцип SEO-копирайтинга – писать для людей, а не для поисковых машин. Используйте ключевые слова естественно.'
                               when :smm
                                 'Важно не только информировать или рекламировать, но и создавать контент, который будет вызывать эмоциональный отклик.'
                               when :content_marketing
                                 'Создавайте контент, который решает проблемы вашей аудитории и предоставляет им ценность.'
                               end,
                      resource_type: 'note'
                    }
                  ])
end

# Создание модуля "День 3: Анализ целевой аудитории"
course_module = CourseModule.create(
  name: 'День 3: Анализ целевой аудитории',
  description: 'Сосредоточимся на методах сегментации аудитории и практике создания портрета целевой аудитории.'
)

## Создание урока "Методы сегментации аудитории"
lesson = Lesson.create(
  course_module_id: course_module.id,
  name: 'Методы сегментации аудитории',
  content: 'Обзор основных методов сегментации аудитории.'
)

### Создание ресурса
Resource.create(
  lesson_id: lesson.id,
  name: 'Сегментация аудитории',
  url: 'https://www.adventum.ru/articles/marketing-i-reklama/segmentaciya-auditorii/',
  resource_type: 'article'
)

### Создание ресурса
Resource.create(
  lesson_id: lesson.id,
  name: 'Для чего нужна сегментация',
  content: 'Сегментация помогает понять, КТО ваш клиент.',
  resource_type: 'note'
)

### Создание ресурса
Resource.create(
  lesson_id: lesson.id,
  name: 'Географическая сегментация',
  content: 'Географическая сегментация полезна для локальных бизнесов и глобальных кампаний с локализацией.',
  resource_type: 'note'
)

### Создание ресурса
Resource.create(
  lesson_id: lesson.id,
  name: 'Демографическая сегментация',
  content: 'Демографическая сегментация — это основа для большинства маркетинговых стратегий.',
  resource_type: 'note'
)

### Создание ресурса
Resource.create(
  lesson_id: lesson.id,
  name: 'Психографическая и поведенческая сегментации',
  content: 'Психографическая и поведенческая сегментации дают глубокое понимание мотиваций и предпочтений аудитории.',
  resource_type: 'note'
)

### Создание задания
Task.create(
  lesson_id: lesson.id,
  description: 'Выберите продукт и опишите его идеального покупателя, используя все четыре метода сегментации. Представьте, как каждый аспект сегментации влияет на выбор маркетинговых сообщений.',
  example: 'Спроси у GPT: введи описание задания и попроси пример.'
)

## Создание урока "Создание портрета целевой аудитории"
lesson = Lesson.create(
  course_module_id: course_module.id,
  name: 'Создание портрета целевой аудитории',
  content: 'Сбор информации, составление и использование подробного портрета аудитории.'
)

### Создание ресурса
Resource.create(
  lesson_id: lesson.id,
  name: 'Портрет целевой аудитории',
  url: 'https://www.insales.ru/blogs/university/portret-celevoj-auditorii',
  resource_type: 'article'
)

### Создание ресурса
Resource.create(
  lesson_id: lesson.id,
  name: 'Что это?',
  content: 'Портрет клиента – это общий образ покупателя, включающий в себя такие характеристики, которые могут рассказать о нем практически все.',
  resource_type: 'note'
)

### Создание ресурса
Resource.create(
  lesson_id: lesson.id,
  name: 'Сегментация и портрет ЦА это не одно и то же',
  content: 'Сегментация аудитории и составление портрета целевой аудитории действительно тесно связаны, но это не одно и то же. Оба этих процесса являются ключевыми элементами маркетингового планирования и стратегии, но они служат разным целям и выполняются разными методами.',
  resource_type: 'note'
)

### Создание задания
Task.create(
  lesson_id: lesson.id,
  description: 'Создайте подробный портрет целевой аудитории для услуги онлайн-образования для взрослых. Учтите их профессиональный фон, интересы, цели обучения и предпочтительные форматы контента.',
  example: 'Спроси у GPT: введи описание задания и попроси пример.'
)
