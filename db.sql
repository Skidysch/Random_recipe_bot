--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-12-17 20:51:00

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 32814)
-- Name: recipes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipes (
    recipe_id bigint NOT NULL,
    recipe_name character varying,
    recipe_picture character varying,
    recipe_description character varying,
    recipe_link character varying
);


ALTER TABLE public.recipes OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 32813)
-- Name: rancipe_db_recipe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rancipe_db_recipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rancipe_db_recipe_id_seq OWNER TO postgres;

--
-- TOC entry 3327 (class 0 OID 0)
-- Dependencies: 214
-- Name: rancipe_db_recipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rancipe_db_recipe_id_seq OWNED BY public.recipes.recipe_id;


--
-- TOC entry 3173 (class 2604 OID 32817)
-- Name: recipes recipe_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes ALTER COLUMN recipe_id SET DEFAULT nextval('public.rancipe_db_recipe_id_seq'::regclass);


--
-- TOC entry 3321 (class 0 OID 32814)
-- Dependencies: 215
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipes (recipe_id, recipe_name, recipe_picture, recipe_description, recipe_link) FROM stdin;
1	Фахитас с курицей на противне	https://grandkulinar.ru/uploads/posts/2019-03/1553360370_11.jpg	Для этой богатой белком фахиты используется застеленный фольгой противень и духовка с верхним огнем: здоровое блюдо для буднего дня, которое не требует долгой уборки.	https://grandkulinar.ru/recepies/9300-fahitas-s-kuricey-na-protivne.html
2	Овощная паста из кабачков с цельнозерновой лапшой	https://grandkulinar.ru/uploads/posts/2019-03/1553360382_5.jpg	Благодаря цуккини и желтому кабачку, нарезанным тонкими полосками, эта паста богата овощами и красочно выглядит. Цельнозерновая паста насыщает блюдо клетчаткой.	https://grandkulinar.ru/9474-ovoschnaya-pasta-iz-kabachkov-s-celnozernovoy-lapshoy.html
3	Паста путтанеска	https://grandkulinar.ru/uploads/posts/2019-03/1553360365_8.jpg	Прелесть этой классической итальянской пасты в том, что ее можно быстро приготовить из ингредиентов, которые наверняка есть на вашей кухне, вроде спагетти, консервированных томатов, чеснока, пасты из анчоусов и красного перца в хлопьях.	https://grandkulinar.ru/recepies/9298-pasta-puttaneska.html
4	Чаша Будды	https://grandkulinar.ru/uploads/posts/2019-03/1553360307_18.jpg	Будда-боул или зерновой боул — популярное блюдо, которое стоит попробовать! Этот сбалансированный здоровый обед или ужин содержит множество красочных овощей, а также зерновые и белковые продукты, а готовится всего 15 минут.	https://grandkulinar.ru/recepies/9342-chasha-buddy.html
5	Блины с курицей, сыром и спаржей	https://grandkulinar.ru/uploads/posts/2019-03/1553360345_92.jpg	Начините покупные блины измельченной курицей-гриль, рикоттой и зеленью. Сверху добавьте свежую спаржу и легкий лимонный соус. 	https://grandkulinar.ru/recepies/937-bliny-s-kuricey-syrom-i-sparzhey.html
6	Яичный салат в лодочках	https://grandkulinar.ru/uploads/posts/2019-03/1553360383_40.jpg	Немного изменив рецепт, можно сделать более здоровую версию традиционного яичного салата. Разделите смесь между листьями салата-латука, посыпьте овощными побегами и сверните, чтобы салат можно было есть руками. 	https://grandkulinar.ru/recepies/9372-yaichnyy-salat-v-lodochkah.html
7	Свинина тушенная в грибном соусе	https://grandkulinar.ru/uploads/posts/2019-03/1553360345_24.jpg	Пряный соус всего за 25 минут превращает привычные куриные грудки в особенное блюдо.	https://grandkulinar.ru/recepies/9346-svinina-tushennaya-v-gribnom-souse.html
8	Котлеты «Митлоф»	https://grandkulinar.ru/uploads/posts/2019-03/1553360341_53.jpg	Оказывается, мясной рулет может быть здоровым блюдом (а еще и очень симпатичным)! Миниатюрный митлоф готовится из смеси постного индюшиного и свиного фарша, а компактная форма позволяет контролировать размер порции. 	https://grandkulinar.ru/recepies/9390-kotlety-mitlof.html
9	Говядина с овощами стир-фрай	https://grandkulinar.ru/uploads/posts/2019-03/1553360350_42.jpg	«Самое лучшее в стир-фрай то, что можно использовать любые овощи на свой вкус», — говорит Триша.	https://grandkulinar.ru/recepies/4567-govyadina-s-ovoschami-stir-fray.html
10	Рис с яичницей и кимчи	https://grandkulinar.ru/uploads/posts/2019-03/1553360298_31.jpg	Для максимального вкуса этого блюда, которое готовится всего 20 минут, разбейте желток перед самой подачей и смешайте с рисом; его насыщенность хорошо сочетается с острым кимчи. 	https://grandkulinar.ru/recepies/9366-ris-s-yaichnicey-i-kimchi.html
11	Сливочная паста феттуччине	https://grandkulinar.ru/uploads/posts/2019-03/1553360333_27.jpg	Ароматный запеченный красный перец из банки позволяет быстро приготовить пасту в будний день. Сверху цельнозерновая лапша посыпается раскрошенной фетой.	https://grandkulinar.ru/recepies/9348-slivochnaya-pasta-fettuchchine.html
12	Запеченная в специях свиная вырезка	https://grandkulinar.ru/uploads/posts/2019-03/1553360377_13.jpg	Нежирное мясо приобретает насыщенный вкус благодаря простой смеси специй.	https://grandkulinar.ru/recepies/2649-zapechennaya-v-speciyah-svinaya-vyrezka.html
13	Паста феттуччине с грецкими орехами и рукколой	https://grandkulinar.ru/uploads/posts/2019-03/1553360305_14.jpg	Когда вам захочется пасты, приготовьте нежную пасту феттучини с хрустящими грецкими орехами по рецепту Элли: это блюдо не нарушит вашу диету.	https://grandkulinar.ru/recepies/9340-pasta-fettuchchine-s-greckimi-orehami-i-rukkoloy.html
14	Кебаб из курицы с зелёным соусом	https://grandkulinar.ru/uploads/posts/2019-03/1553360376_23.jpg	Приготовьте летний песто с привычной свежей зеленью, базиликом и петрушкой, но добавьте в него кое-что новое: авокадо! Оно сделает соус очень нежным и обогатит его полезными жирами.	https://grandkulinar.ru/recepies/9345-kebab-iz-kuricy-s-zelenym-sousom.html
15	Тортеллини с сыром в лёгком бульоне	https://grandkulinar.ru/uploads/posts/2019-03/1553360387_67.jpg	Теплый сытный суп от Джады требует всего 4 ингредиента — куриный бульон, тортеллини, черный перец и петрушку — и готовится не более 30 минут. 	https://grandkulinar.ru/recepies/9409-tortellini-s-syrom-v-legkom-bulone.html
16	Паста с креветками и кабачковыми лентами	https://grandkulinar.ru/uploads/posts/2019-03/1553360328_2.jpg	Креветки среднего размера идеально подходят для блюда из спагетти с полосками кабачка. Для вегетарианской версии не используйте креветки, увеличьте количество помидоров вдвое и подавайте блюдо с порцией частично обезжиренного сыра рикотта.	https://grandkulinar.ru/recepies/9293-pasta-s-krevetkami-i-kabachkovymi-lentami.html
17	Курица в кунжуте с рисом из брокколи (диета Whole30)	https://grandkulinar.ru/uploads/posts/2019-03/1553360375_3.jpg	В этом богатом белками блюде с курицей используются все части брокколи, от стебля до соцветий. Из стеблей получается безуглеводный «рис», а соцветия готовятся на пару.	https://grandkulinar.ru/recepies/9294-kurica-v-kunzhute-s-risom-iz-brokkoli-dieta-whole30.html
18	Жареные на гриле креветки в листьях салата с остро-мятным соусом	https://grandkulinar.ru/uploads/posts/2019-03/1553360329_1.jpg	Заверните жареные на гриле креветки с зеленым соусом в листья салата для хрустящей освежающей закуски.	https://grandkulinar.ru/recepies/9292-zharenye-na-grile-krevetki-v-listyah-salata-s-ostro-myatnym-sousom.html
19	Стейк из лосося на гриле с бобами эдамаме	https://grandkulinar.ru/uploads/posts/2019-03/1553360315_4.jpg	Благодаря содержанию омега-3 кислот лосось отлично подходит для здоровых нежирных блюд. Придайте рыбе яркий вкус, начинив филе смесью из свежей зелени. 	https://grandkulinar.ru/recepies/6336-steyk-iz-lososya-na-grile-s-bobami-edamame.html
20	Креветки в панировке из кокосовой стружки с острым ананасовым соусом (диета Whole30)	https://grandkulinar.ru/uploads/posts/2019-03/1553360382_6.jpg	Здоровое питание не означает отказ от вкусных блюд, например, креветок в кокосовой панировке. С этим гениальным рецептом вы можете смело наслаждаться креветками с чудесным кисло-сладким дип-соусом.	https://grandkulinar.ru/recepies/9295-krevetki-v-panirovke-iz-kokosovoy-struzhki-s-ostrym-ananasovym-sousom-dieta-whole30.html
21	Тайская овощная лапша карри с курицей (диета Whole30)	https://grandkulinar.ru/uploads/posts/2019-03/1553360292_7.jpg	Это богатое овощами блюдо с курицей содержит яркую палитру вкусов благодаря красной пасте карри, миндальной пасте и орехам кешью. 	https://grandkulinar.ru/recepies/9297-tayskaya-ovoschnaya-lapsha-karri-s-kuricey-dieta-whole30.html
22	Креветки скампи в легком соусе	https://grandkulinar.ru/uploads/posts/2019-03/1553360314_9.jpg	Традиционно креветки скампи готовятся с большим количеством сливочного масла. Однако в этой версии используется куриный бульон, а оливки Каламата придают дополнительную нотку вкуса. 	https://grandkulinar.ru/recepies/9299-krevetki-skampi-v-legkom-souse.html
23	Лосось жареный на сковороде и салат с яблоками и финиками	https://grandkulinar.ru/uploads/posts/2019-03/1553360300_10.jpg	Это блюдо выглядит изысканно, но оно достаточно простое и подойдет для ужина в будний день. Лосось готовится на сковороде менее 10 минут, пока хрустящий салат с капустой кале пропитывается вкусами. Добавьте цельнозерновую булочку — и ужин готов.	https://grandkulinar.ru/recepies/9312-losos-zharenyy-na-skovorode-i-salat-s-yablokami-i-finikami.html
24	Креветки в лимонно-чесночном соусе с кукурузной кашей гритс	https://grandkulinar.ru/uploads/posts/2019-03/1553360345_12.jpg	В этом сытном блюде нет обилия сливочного масла. Но не беспокойтесь о вкусе: пикантность креветкам придают лимон и чеснок. 	https://grandkulinar.ru/recepies/9302-krevetki-v-limonno-chesnochnom-souse-s-kukuruznoy-kashey-grits.html
25	Запеченный лосось с грейпфрутовым соусом	https://grandkulinar.ru/uploads/posts/2019-03/1553360319_15.jpg	В рецепте запеченного лосося Элли использует грейпфрут, лук-шалот и имбирь, чтобы придать блюду яркий вкус, не добавляя лишних жиров и калорий.	https://grandkulinar.ru/recepies/6327-zapechennyy-losos-s-greypfrutovym-sousom.html
26	Овощная каша из цветной капусты и жареные креветки (диета Whole30)	https://grandkulinar.ru/uploads/posts/2019-03/1553360398_61.jpg	Эта здоровая версия классического блюда южной кухни станет отличным дополнением меню буднего дня. Сытное и вкусное, оно богато белком и клетчаткой, а вместо кукурузной каши используется нежная цветная капуста.	https://grandkulinar.ru/recepies/9341-ovoschnaya-kasha-iz-cvetnoy-kapusty-i-zharenye-krevetki-dieta-whole30.html
27	Куриные бедра на гриле в чесночно-имбирном маринаде	https://grandkulinar.ru/uploads/posts/2019-03/1553360308_17.jpg	Сэкономьте время в день пикника — накануне вечером замаринуйте курицу в смеси из чеснока, имбиря, соевого соуса и апельсинового сока.	https://grandkulinar.ru/recepies/6409-kurinye-bedra-na-grile-v-chesnochno-imbirnom-marinade.html
28	Стир-фрай с креветками	https://grandkulinar.ru/uploads/posts/2019-03/1553360342_19.jpg	Быстрое блюдо с креветками по рецепту Ри содержит множество летних ингредиентов — кукурузу, цуккини, виноградные помидоры и свежий базилик. Его можно подавать как отдельно, так и с рисом или пастой.	https://grandkulinar.ru/recepies/9277-stir-fray-s-krevetkami.html
29	Острое рагу из свинины и батата	https://grandkulinar.ru/uploads/posts/2019-03/1553360369_20.jpg	Острые копченые перцы чипотле и порошок чили придают этому быстрому мясному рагу глубокий насыщенный вкус. Для экономии времени и меньшего содержания жира в масле поджаривают только свинину, а лук вместе с помидорами, чесноком и перцами измельчают в пюре для бульона.	https://grandkulinar.ru/recepies/9343-ostroe-ragu-iz-svininy-i-batata.html
30	Запеченный лосось в кленовой глазури	https://grandkulinar.ru/uploads/posts/2019-03/1553360324_21.jpg	Это блюдо всего из 5 ингредиентов (не считая соль и перец) просто создано для ужина в будний день. Смажьте каждое филе лосося горчично-кленовым соусом и запеките до готовности. Весь процесс займет всего 20 минут.	https://grandkulinar.ru/recepies/6335-zapechennyy-losos-v-klenovoy-glazuri.html
31	Куриная грудка и салат с редисом и имбирём	https://grandkulinar.ru/uploads/posts/2019-03/1553360373_22.jpg	Для основного блюда с тонким вкусом отварите куриные грудки в ароматном бульоне с имбирем, луком-шалотом и кунжутным маслом.	https://grandkulinar.ru/recepies/9344-kurinaya-grudka-i-salat-s-redisom-i-imbirem.html
32	Куриные грудки в духовке под лимонно-мятным соусом	https://grandkulinar.ru/uploads/posts/2019-03/1553360300_25.jpg	Питательная капуста кале и сладкая кукуруза богаты витамином A. Сыр Пеппер Джек придает яркую остроту, а также удерживает вместе начинку для курицы. Если не любите острое, попробуйте сыр Монтерей Джек или Хаварти — начинка будет нежной и не жгучей. 	https://grandkulinar.ru/recepies/9347-kurinye-grudki-v-duhovke-pod-limonno-myatnym-sousom.html
33	Лосось с салатом	https://grandkulinar.ru/uploads/posts/2019-03/1553360321_26.jpg	Этот ужин из лосося готовить проще простого. Приправьте рыбу солью и перцем и запекайте в духовке 15 минут. Добавьте сверху несложную сальсу с петрушкой и миндалем.	https://grandkulinar.ru/recepies/2670-losos-s-salatom.html
34	Пряные креветки в пиве в фольге	https://grandkulinar.ru/uploads/posts/2019-03/1553360342_28.jpg	Соус чипотле и кумин соединяются с пивом, сливочным маслом и лаймом в простом здоровом блюде, которое очень быстро готовится. Перед запеканием на гриле поместите ингредиенты в конверты из фольги, чтобы сохранить все соки; в результате получится соус, отлично подходящий к рису. 	https://grandkulinar.ru/recepies/9349-pryanye-krevetki-v-pive-v-folge.html
35	Азиатский салат с курицей и киноа	https://grandkulinar.ru/uploads/posts/2019-03/1553360313_29.jpg	Этот вкусный и красочный салат — отличный способ обогатить рацион ваших детей цельнозерновыми продуктами.	https://grandkulinar.ru/recepies/9350-aziatskiy-salat-s-kuricey-i-kinoa.html
36	Лосось с лимоном, каперсами и розмарином, запеченный в фольге	https://grandkulinar.ru/uploads/posts/2019-03/1553360329_30.jpg	Джада покрывает нежное филе лосося насыщенной соленой смесью из ломтиков лимона, каперсов и вина Марсала. Запекаясь в конвертах из фольги, рыба остается влажной и шелковистой.	https://grandkulinar.ru/recepies/1533-losos-s-limonom-kapersami-i-rozmarinom-zapechennyy-v-folge.html
37	Свиная котлета на кости в острой апельсиновой глазури	https://grandkulinar.ru/uploads/posts/2019-03/1553360383_32.jpg	Кленовый сироп, концентрированный апельсиновый сок и перцы чипотле в соусе адобо сочетаются в сладкой пикантной глазури для постных свиных котлет на кости. Перед приготовлением глазури Элли убирает семена чипотле — таким образом вкус будет насыщенным, но не слишком жгучим.	https://grandkulinar.ru/recepies/9367-svinaya-kotleta-na-kosti-v-ostroy-apelsinovoy-glazuri.html
38	Паста «волосы ангела» с креветками и зеленью	https://grandkulinar.ru/uploads/posts/2019-03/1553360295_33.jpg	Сбалансируйте углеводы, используя креветки: в дюжине креветок всего 85 калорий, к тому же они богаты белком и селеном — мощным антиоксидантом. 	https://grandkulinar.ru/recepies/9308-pasta-volosy-angela-s-krevetkami-i-zelenyu.html
39	Жареный лосось на гриле под сладко-пряной корочкой	https://grandkulinar.ru/uploads/posts/2019-03/1553360303_34.jpg	Филе лосося по рецепту Элли готовится 17 минут и содержит 280 калорий на порцию. Сэкономьте время на кухне благодаря несложной смеси специй, включающей в себя порошок чили, кумин и светлый коричневый сахар — блюдо приобретает яркий вкус без лишнего жира. 	https://grandkulinar.ru/recepies/9368-zharenyy-losos-na-grile-pod-sladko-pryanoy-korochkoy.html
40	Креветки в лимонном соусе с пастой орсо и рукколой	https://grandkulinar.ru/uploads/posts/2019-03/1553360295_35.jpg	Джада в одном блюде совмещает свежий лимонный вкус с пастой орзо и креветками. Вы легко приготовите это в будний день, но блюдо такое вкусное, что вам наверняка захочется подать его гостям.	https://grandkulinar.ru/recepies/2317-krevetki-v-limonnom-souse-s-pastoy-orso-i-rukkoloy.html
41	Цыплята терияки с капустой бок-чой	https://grandkulinar.ru/uploads/posts/2019-03/1553360302_36.jpg	Подавайте корнуэльскую курицу вместе с капустой бок чой и ломтиками грейпфрута. Сочетание соевого соуса, уксуса, соуса хойсин, имбиря и перца чили в маринаде идеально дополняет кисло-сладкий грейпфрут. 	https://grandkulinar.ru/recepies/9369-cyplyata-teriyaki-s-kapustoy-bok-choy.html
42	Овощной рис из цветной капусты с жареными креветками	https://grandkulinar.ru/uploads/posts/2019-03/1553360391_37.jpg	Сара Линн готовит здоровую версию популярного блюда, используя измельченную цветную капусту, овощи, яйцо и кунжутное масло. 	https://grandkulinar.ru/recepies/9370-ovoschnoy-ris-iz-cvetnoy-kapusty-s-zharenymi-krevetkami.html
43	Свиные котлеты по-вьетнамски с имбирным рисом	https://grandkulinar.ru/uploads/posts/2019-03/1553360355_38.jpg	Простой маринад из лемонграсса, рыбного соуса, лука-шалота и соевого соуса придает натуральным свиным котлетам яркий вкус вьетнамской кухни. 	https://grandkulinar.ru/recepies/9371-svinye-kotlety-po-vetnamski-s-imbirnym-risom.html
44	Мои большие сытные греческие бургеры	https://grandkulinar.ru/uploads/posts/2019-03/1553360309_39.jpg	В этих бургерах от Элли вы не найдете привычные котлеты, которые почему-то называют здоровой едой. Начинка из шпината и сыра фета делает бургер сочным и сытным, особенно в сочетании с йогуртовым соусом с лимоном и укропом. 	https://grandkulinar.ru/recepies/3713-moi-bolshie-sytnye-grecheskie-burgery.html
45	Жареный картофель с лососем	https://grandkulinar.ru/uploads/posts/2019-03/1553360336_41.jpg	Замените жирное мясо лососем в этом блюде из картофеля и овощей. Оно отлично подойдет как для завтрака, так и для ужина. 	https://grandkulinar.ru/recepies/2516-zharenyy-kartofel-s-lososem.html
46	Салат с капустой кале и яблоком	https://grandkulinar.ru/uploads/posts/2019-03/1553360345_43.jpg	Листовая капуста кале, богатая антиоксидантами, особенно полезна в сыром виде. Тонкие полоски капусты смягчаются легкой лимонной заправкой и добавляются к пикантно-сладкой смеси из яблока, фиников, миндаля и сыра. Немного сыра пекорино придает питательному салату приятную глубину вкуса. 	https://grandkulinar.ru/recepies/6212-salat-s-kapustoy-kale-i-yablokom.html
47	Полезный ужин на противне с лососем	https://grandkulinar.ru/uploads/posts/2019-03/1553360372_44.jpg	Здоровый и простой ужин для двоих, богатый белком и клетчаткой, можно приготовить на одном противне. Сначала запекаются овощи, затем к ним добавляется филе лосося, натертое специями барбекю, и все ингредиенты будут готовы одновременно. 	https://grandkulinar.ru/recepies/9373-poleznyy-uzhin-na-protivne-s-lososem.html
48	Чикенбургеры по-азиатски	https://grandkulinar.ru/uploads/posts/2019-03/1553360356_45.jpg	Обогатите обычный бургер с курицей яркими вкусами, используя морковь, имбирь, соус хойсин и острый чесночный соус с чили. Подавайте с маринованным луком и грибами на поджаренной булочке. 	https://grandkulinar.ru/recepies/9378-chikenburgery-po-aziatski.html
49	Овощная каша из цветной капусты с жареными в чесночном соусе креветками	https://grandkulinar.ru/uploads/posts/2019-03/1553360359_46.jpg	Цветная капуста с сыром и сливочным маслом заменяет в этом вкусном ужине кукурузную кашу — полезные овощи и креветки в одном блюде. 	https://grandkulinar.ru/recepies/9387-ovoschnaya-kasha-iz-cvetnoy-kapusty-s-zharenymi-v-chesnochnom-souse-krevetkami.html
50	Лосось в кленовом сиропе с жареной цветной капустой и клюквой	https://grandkulinar.ru/uploads/posts/2019-03/1553360338_47.jpg	Простой маринад из соевого соуса и кленового сиропа превращает филе лосося в прекрасный ужин, дополненный гарниром из цветной капусты. 	https://grandkulinar.ru/recepies/2515-losos-v-klenovom-sirope-s-zharenoy-cvetnoy-kapustoy-i-klyukvoy.html
51	Креветки с кускусом и соусом из йогурта и хумуса	https://grandkulinar.ru/uploads/posts/2019-03/1553360359_48.jpg	Это быстрое блюдо с креветками содержит цельнозерновую кашу, белки и овощи. (Совет: пока варятся креветки, приготовьте кускус.) 	https://grandkulinar.ru/recepies/9382-krevetki-s-kuskusom-i-sousom-iz-yogurta-i-humusa.html
52	Врапы с жареными кабачками и шпинатом	https://grandkulinar.ru/uploads/posts/2019-03/1553360371_49.jpg	Используйте покупной хумус, цельнозерновые лепешки и ассорти из хрустящих овощей, чтобы приготовить вкусный и удобный обед. 	https://grandkulinar.ru/recepies/9388-vrapy-s-zharenymi-kabachkami-i-shpinatom.html
53	Жареный хек в пряностях с охлаждённым фасолевым салатом	https://grandkulinar.ru/uploads/posts/2019-03/1553360372_50.jpg	Шеф-повар и спортсмен Эдди Джексон готовит легкое и сытное рыбное блюдо, богатое белком, из хека и фасоли. Используя покупную консервированную фасоль, блюдо можно приготовить всего за 30 минут. 	https://grandkulinar.ru/recepies/9393-zharenyy-hek-v-pryanostyah-s-ohlazhdennym-fasolevym-salatom.html
54	Кесадилья с ветчиной и яблоками	https://grandkulinar.ru/uploads/posts/2019-03/1553360387_51.jpg	Для быстрого сытного блюда начините цельнозерновые тортильи несоленой ветчиной и швейцарским сыром. Ломтики яблока придают сладость, а горчица — острую нотку. 	https://grandkulinar.ru/recepies/6391-kesadilya-s-vetchinoy-i-yablokami.html
55	Куриные бёдра в духовке и кускус с укропом	https://grandkulinar.ru/uploads/posts/2019-03/1553360305_52.jpg	Вместо грудки используйте куриные бедра без кожи и костей: мясо будет оставаться сочным и ароматным. Виноградные помидоры размягчаются под верхним огнем, придавая курице дополнительную сочность. Лимон, укроп и орегано добавляют этому блюду греческий колорит. 	https://grandkulinar.ru/recepies/9394-kurinye-bedra-v-duhovke-i-kuskus-s-ukropom.html
56	Жареная курица на сковороде с грибным соусом	https://grandkulinar.ru/uploads/posts/2019-03/1553360340_54.jpg	Это блюдо с низкокалорийными жареными грибами и вялеными томатами — сытное и здоровое. Небольшое количество сливочного масла в соусе придает кремовую текстуру и насыщенность. 	https://grandkulinar.ru/recepies/9310-zharenaya-kurica-na-skovorode-s-gribnym-sousom.html
57	Запеченный лосось в соевой глазури с салатом из огурцов и авокадо	https://grandkulinar.ru/uploads/posts/2019-03/1553360326_55.jpg	Покройте филе лосося простой соевой глазурью и подавайте со свежим салатом из огурца и авокадо — это элегантное блюдо в азиатском стиле готовится 25 минут. 	https://grandkulinar.ru/recepies/1046-zapechennyy-losos-v-soevoy-glazuri-s-salatom-iz-ogurcov-i-avokado.html
58	Цельнозерновая паста с курицей и зеленью	https://grandkulinar.ru/uploads/posts/2019-03/1553360304_56.jpg	Приготовьте куриные грудки без кожи вместе с чесноком, помидорами и рукколой в качестве соуса к цельнозерновой пасте. Сохраните немного воды после варки макарон: вы сможете добавлять ее в соус, чтобы его разбавить. 	https://grandkulinar.ru/recepies/9395-celnozernovaya-pasta-s-kuricey-i-zelenyu.html
59	Салат с курицей, шпинатом и виноградом	https://grandkulinar.ru/uploads/posts/2019-03/1553360349_57.jpg	Бурый рис обеспечивает для этого салата плотную основу с ореховым привкусом, а также хорошо сочетается со сладким виноградом и свежей зеленью. Если использовать готовый замороженный рис, блюдо займет не больше 15 минут. Кремовую заправку можно быстро приготовить в блендере. 	https://grandkulinar.ru/recepies/9396-salat-s-kuricey-shpinatom-i-vinogradom.html
60	Креветки в кокосовой панировке с тропическим рисом	https://grandkulinar.ru/uploads/posts/2019-03/1553360363_58.jpg	Запеченные в кокосовой панировке креветки идеально сочетаются с легким рисом с тропической ноткой. 	https://grandkulinar.ru/recepies/9397-krevetki-v-kokosovoy-panirovke-s-tropicheskim-risom.html
61	Жареная курица с салатом из помидоров и огурцов	https://grandkulinar.ru/uploads/posts/2019-03/1553360329_59.jpg	Замените крахмалистые гарниры этим тонизирующим салатом из помидоров и огурцов. Простая заправка на основе лимона и укропа дополняет курицу, не добавляя лишних жиров и сахара. 	https://grandkulinar.ru/recepies/9399-zharenaya-kurica-s-salatom-iz-pomidorov-i-ogurcov.html
62	Свиная корейка с ананасовой сальсой	https://grandkulinar.ru/uploads/posts/2019-03/1553360325_60.jpg	Яркая ананасовая сальса с имбирем и китайской смесью «5 специй» делает этот ужин из свиной корейки по-настоящему особенным. 	https://grandkulinar.ru/recepies/1670-svinaya-koreyka-s-ananasovoy-salsoy.html
63	Стир-фрай из курицы и спаржи	https://grandkulinar.ru/uploads/posts/2019-03/1553360315_62.jpg	Вместо заказа доставки из китайского ресторана попробуйте сделать сытный и здоровый стир-фрай. Блюдо готовится с нежной куриной грудкой, спаржей и ароматным трио из чеснока, имбиря и соевого соуса, при этом не содержит лишнего жира и соли. 	https://grandkulinar.ru/recepies/9401-stir-fray-iz-kuricy-i-sparzhi.html
64	Пицца с салатом триколор	https://grandkulinar.ru/uploads/posts/2019-03/1553360334_63.jpg	Элли экономит время, используя покупное тесто для пиццы из цельнозерновой муки. Чтобы блюдо было менее жирным, возьмите обезжиренную моцареллу и рикотту. 	https://grandkulinar.ru/recepies/1514-picca-s-salatom-trikolor.html
65	Бутерброд с тунцом, авокадо и апельсином с гарниром из Коул Слоу	https://grandkulinar.ru/uploads/posts/2019-03/1553360391_64.jpg	Когда хочется сэндвичей, попробуйте этот низкокалорийный рецепт: поджаренный белый хлеб, покрытый белковым салатом из тунца и ломтиками авокадо. Дольки апельсина приправлены смесью «5 специй», что дополняет и слегка меняет их вкус, придавая теплую пряную нотку. 	https://grandkulinar.ru/recepies/9403-buterbrod-s-tuncom-avokado-i-apelsinom-s-garnirom-iz-koul-slou.html
66	Теплый салат с говядиной и маринованным перцем горошком	https://grandkulinar.ru/uploads/posts/2019-03/1553360391_65.jpg	Это чудесное сочетание стейка с салатом: сочные кусочки мяса и множество овощей. Нежная перечная заправка завершает блюдо. 	https://grandkulinar.ru/recepies/1315-teplyy-salat-s-govyadinoy-i-marinovannym-percem-goroshkom.html
67	Курица с артишоками в лимонном соусе	https://grandkulinar.ru/uploads/posts/2019-03/1553360328_66.jpg	Артишоки превращают курицу в быстрый и сытный ужин. Потушите их несколько минут, чтобы они стали сочными и пропитались соусом из вина, лука и чеснока. 	https://grandkulinar.ru/recepies/9408-kurica-s-artishokami-v-limonnom-souse.html
68	Пицца с мускатной тыквой и сыром горгонзола	https://grandkulinar.ru/uploads/posts/2019-03/1553360338_68.jpg	Соус маринара вам не понадобится: Элли Кригер покрывает корж мускатной тыквой, горгонзолой, красным луком, шалфеем и грецкими орехами. 	https://grandkulinar.ru/recepies/1511-picca-s-muskatnoy-tykvoy-i-syrom-gorgonzola.html
69	Стейк из говядины с соусом «Пиццайола»	https://grandkulinar.ru/uploads/posts/2019-03/1553360362_69.jpg	Постный сирлоин-стейк томится до мягкости в насыщенном томатном соусе с чесноком — здоровый ужин готов уже через несколько минут. 	https://grandkulinar.ru/recepies/695-steyk-iz-govyadiny-s-sousom-piccayola.html
70	Жареная курица-гриль под соусом из красного лука	https://grandkulinar.ru/uploads/posts/2019-03/1553360361_70.jpg	Для остро-сладкого привкуса Рэйчел Рэй покрывает сочные кусочки курицы смесью из коричневого сахара, горчицы с медом, душистого перца и карри, а затем жарит мясо на гриле. 	https://grandkulinar.ru/recepies/9410-zharenaya-kurica-gril-pod-sousom-iz-krasnogo-luka.html
71	Крабовый салат с авокадо и сухариками	https://grandkulinar.ru/uploads/posts/2019-03/1553360384_71.jpg	Греческий йогурт придает низкокалорийному салату кремовую текстуру, а авокадо насыщает блюдо полезными жирами. 	https://grandkulinar.ru/recepies/9411-krabovyy-salat-s-avokado-i-suharikami.html
72	Лосось с томатами, запеченный в фольге	https://grandkulinar.ru/uploads/posts/2019-03/1553360345_72.jpg	При запекании в фольге рыба пропитывается лимонным соком и ароматами зелени, при этом блюдо получается нежирным.	https://grandkulinar.ru/recepies/4254-losos-s-tomatami-zapechennyy-v-folge.html
73	Жареная треска с чечевицей за 25 минут	https://grandkulinar.ru/uploads/posts/2019-03/1553360309_73.jpg	Используя консервированную чечевицу вместо сырой, вы экономите как минимум 30 минут. Потушите ее с беконом и красным вином, чтобы подчеркнуть естественный вкус; ломтики сельдерея добавляются в самом конце для придания свежей хрустящей нотки. Чечевица будет отличным гарниром к мясистому филе трески. 	https://grandkulinar.ru/recepies/9437-zharenaya-treska-s-chechevicey-za-25-minut.html
74	Мексиканский суп с рисом и курицей	https://grandkulinar.ru/uploads/posts/2019-03/1553360388_74.jpg	Оставшаяся покупная курица-гриль позволит быстро приготовить вкусное рагу. 	https://grandkulinar.ru/recepies/9438-meksikanskiy-sup-s-risom-i-kuricey.html
75	Паста орекьетте с песто из рапини	https://grandkulinar.ru/uploads/posts/2019-03/1553360389_75.jpg	Когда хочется пасты с соусом песто, попробуйте этот рецепт от Энн Баррелл. Чтобы уменьшить количество масла, она добавляет в соус сыр рикотта, затем вмешивает в массу рапини, жареные грецкие орехи и немного пармезана. 	https://grandkulinar.ru/recepies/8034-pasta-orekette-s-pesto-iz-rapini.html
76	Говяжий стейк с горчичным соусом и картофелем	https://grandkulinar.ru/uploads/posts/2019-03/1553360318_76.jpg	Наслаждайтесь классической комбинацией стейка и картофеля с этой более легкой версией блюда. Запеченный в духовке картофель фри менее калорийный, а постный фланк-стейк, с которого обрезан лишний жир, обеспечивает блюдо белками. 	https://grandkulinar.ru/recepies/344-govyazhiy-steyk-s-gorchichnym-sousom-i-kartofelem.html
77	Стейк и зелёная фасоль с помидорами на гриле под соусом чимичурри	https://grandkulinar.ru/uploads/posts/2019-03/1553360313_77.jpg	Подавайте стейк, нарезанный небольшими порциями, вместе с сытной жареной на гриле зеленой фасолью и помидорами. 	https://grandkulinar.ru/recepies/9439-steyk-i-zelenaya-fasol-s-pomidorami-na-grile-pod-sousom-chimichurri.html
78	Спагетти из цельнозерновой муки с лимоном, базиликом и лососем	https://grandkulinar.ru/uploads/posts/2019-03/1553360319_78.jpg	Джада предпочитает цельнозерновые спагетти: они обладают тонким ореховым привкусом. Для легкого здорового блюда к спагетти добавляются свежие овощи и рыба, сдобренные лимоном и зеленью. 	https://grandkulinar.ru/recepies/2514-spagetti-iz-celnozernovoy-muki-s-limonom-bazilikom-i-lososem.html
79	Пряный суп с мангольдом	https://grandkulinar.ru/uploads/posts/2019-03/1553360379_79.jpg	Этот теплый сытный суп быстро готовится и содержит множество полезных ингредиентов. Припустите мангольд в пряном бульоне с тмином и кумином, затем дополните блюдо яйцами, греческим йогуртом и хрустящими чипсами из питы. 	https://grandkulinar.ru/recepies/151-pryanyy-sup-s-mangoldom.html
80	Бефстроганов в скороварке	https://grandkulinar.ru/uploads/posts/2019-03/1553360324_80.jpg	Скороварка позволяет с легкостью готовить в будний вечер блюда, которые обычно долго тушатся. Этот бефстроганов с постной говядиной — настоящий кладезь белков. 	https://grandkulinar.ru/recepies/2304-befstroganov-v-skorovarke.html
81	Вегетарианские бургеры с грибами	https://grandkulinar.ru/uploads/posts/2019-03/1553360385_81.jpg	Добавив в овощные котлеты грибы, вы сделаете их очень сочными; из-за деликатной текстуры их лучше готовить на сковороде, а не на гриле. 	https://grandkulinar.ru/recepies/9440-vegetarianskie-burgery-s-gribami.html
82	Арабские сэндвичи с куриными фалафель и капустным салатом	https://grandkulinar.ru/uploads/posts/2019-03/1553360365_82.jpg	Покупная сухая смесь для фалафеля обеспечивает чудесную корочку для курицы и прекрасно сочетается с острым соусом на основе хумуса. 	https://grandkulinar.ru/recepies/340-arabskie-sendvichi-s-kurinymi-falafel-i-kapustnym-salatom.html
83	Лосось с капустой брокколи	https://grandkulinar.ru/uploads/posts/2019-03/1553360332_83.jpg	Лосось — прекрасный источник полезных жирных кислот омега-3, к тому же он чудесно смотрится на подушке из брокколи, богатой витамином C. Это красочное низкокалорийное блюдо, украшенное хлопьями красного перца и свежей кинзой, готовится не дольше 20 минут. 	https://grandkulinar.ru/recepies/6337-losos-s-kapustoy-brokkoli.html
84	Кукурузная каша гритс с беконом и фасолью	https://grandkulinar.ru/uploads/posts/2019-03/1553360329_84.jpg	Для сытного и здорового ужина, не требующего много времени, приготовьте нежную кукурузную кашу с болгарским перцем, луком, листовой капустой и фасолью «черный глаз». Используйте для каши обезжиренное молоко — блюдо будет менее калорийным. 	https://grandkulinar.ru/recepies/9441-kukuruznaya-kasha-grits-s-bekonom-i-fasolyu.html
85	Тилапия со спаржей на пару и мятой	https://grandkulinar.ru/uploads/posts/2019-03/1553360307_85.jpg	Гремолата, смесь из мяты, лимонной цедры и чеснока, придает жареной рыбе свежий вкус. 	https://grandkulinar.ru/recepies/9442-tilapiya-so-sparzhey-na-paru-i-myatoy.html
86	Весенний салат с курицей и картофелем	https://grandkulinar.ru/uploads/posts/2019-03/1553360341_86.jpg	Покупная курица-гриль — секретный ингредиент сытного салата, который готовится 20 минут. 	https://grandkulinar.ru/recepies/9443-vesenniy-salat-s-kuricey-i-kartofelem.html
87	Сладкий картофель с панчеттой, грибами шиитаке и рапини	https://grandkulinar.ru/uploads/posts/2019-03/1553360396_87.jpg	Батат начиняется овощами с чесноком и панчеттой, а сверху покрыт легким соусом из рикотты и пармезана с ноткой мускатного ореха. 	https://grandkulinar.ru/recepies/320-sladkiy-kartofel-s-panchettoy-gribami-shiitake-i-rapini.html
88	Бурый рис с курицей и овощами	https://grandkulinar.ru/uploads/posts/2019-03/1553360403_88.jpg	Это блюдо обладает насыщенным вкусом, к тому же оно быстрое и здоровое. Покупная курица-гриль, бурый рис и обрезанная стручковая фасоль позволяют приготовить ужин менее чем за 30 минут. Смесь ярких специй и жареных орехов придает теплый марокканский вкус, который делает это блюдо незабываемым. 	https://grandkulinar.ru/recepies/9444-buryy-ris-s-kuricey-i-ovoschami.html
89	Куриные пальчики с гарниром из паровой брокколи	https://grandkulinar.ru/uploads/posts/2019-03/1553360403_89.jpg	Подайте блюдо, которое так любят дети, с брокколи, приготовленной на пару; в каждой порции всего 330 ккал. Кетчуп с добавлением порошка карри будет быстрым и простым дип-соусом. 	https://grandkulinar.ru/recepies/9445-kurinye-palchiki-s-garnirom-iz-parovoy-brokkoli.html
90	Жаренные на гриле куриные грудки с теплым салатом	https://grandkulinar.ru/uploads/posts/2019-03/1553360356_90.jpg	Капуста кале, запеченная с картофелем, помидорами и пармезаном, идеально сочетается с жареной на гриле курицей. 	https://grandkulinar.ru/recepies/690-zharennye-na-grile-kurinye-grudki-s-ovoschnym-salatom.html
91	Макароны бантики с фаршем и фасолью	https://grandkulinar.ru/uploads/posts/2019-03/1553360385_91.jpg	Благодаря цельнозерновым макаронам, куриному колбасному фаршу и белой фасоли Элли удается уместить в одной порции пасты целых 30 гр. белка. Салат эскариоль обогащает блюдо клетчаткой и придает хрустящую текстуру. 	https://grandkulinar.ru/recepies/9446-makarony-bantiki-s-farshem-i-fasolyu.html
92	Арктический голец с жареными грибами	https://grandkulinar.ru/uploads/posts/2019-03/1553360363_93.jpg	Рыба готовится всего около 6 минут, а простой луково-грибной соус и салат с рукколой дополняют блюдо разнообразием текстур и вкусов. 	https://grandkulinar.ru/recepies/9447-arkticheskiy-golec-s-zharenymi-gribami.html
93	Такос с жареной свининой, капустой и ананасами	https://grandkulinar.ru/uploads/posts/2019-03/1553360371_94.jpg	Соедините сладкое и соленое: подайте тако из сочной жареной на гриле свинины вместе с кусочками ананаса. Сладкий фрукт идеально дополняет жгучесть порошка чили в составе сухого маринада для мяса. 	https://grandkulinar.ru/recepies/9448-takos-s-zharenoy-svininoy-kapustoy-i-ananasami.html
94	Лепёшка с мясом и помидорами с соусом из авокадо	https://grandkulinar.ru/uploads/posts/2019-03/1553360333_95.jpg	Попробуйте этот стейк в мексиканском стиле, когда вам нужно быстрое, но здоровое основное блюдо. В рецепте используются ломтики стейка, простой соус из авокадо и кинзы, салат с помидорами и сердцевинами пальмы, а также пшеничные тортильи; все блюдо готовится 30 минут. 	https://grandkulinar.ru/recepies/9461-lepeshka-s-myasom-i-pomidorami-s-sousom-iz-avokado.html
95	Гамбургер с лососем, карри и релишем из лука-шалота и яблок, тушеных в вине	https://grandkulinar.ru/uploads/posts/2019-03/1553360379_96.jpg	Обогатите ваше меню полезным лососем с этими несложными бургерами. Котлеты, которые подаются на поджаренных картофельных булочках, готовятся из ароматной смеси: филе лосося, сладкие яблоки и нарезанный лук-шалот. 	https://grandkulinar.ru/recepies/7743-gamburger-s-lososem-karri-i-relishem-iz-luka-shalota-i-yablok-tushenyh-v-vine.html
96	Корейка, тушеная с яблочным сидром, и гарнир из толченого картофеля с простоквашей	https://grandkulinar.ru/uploads/posts/2019-03/1553360381_97.jpg	Это блюдо для большой компании довольно легко приготовить. Молодой картофель, чеснок и пахта позволяют сделать ароматный гарнир без излишнего жира. 	https://grandkulinar.ru/recepies/7742-koreyka-tushenaya-s-yablochnym-sidrom-i-garnir-iz-tolchenogo-kartofelya-s-prostokvashey.html
97	Густой суп с капустой кале, сельдереем и фасолью	https://grandkulinar.ru/uploads/posts/2019-03/1553360349_98.jpg	Замороженная фасоль и мангольд позволяют приготовить этот вегетарианский ужин очень быстро. Соевый соус и копченая паприка обеспечивает глубокий вкус, присущий тушеным блюдам. 	https://grandkulinar.ru/recepies/985-gustoy-sup-s-kapustoy-kale-seldereem-i-fasolyu.html
98	Чили с двумя видами фасоли	https://grandkulinar.ru/uploads/posts/2019-03/1553360354_99.jpg	Благодаря насыщенному вкусу кажется, будто это чили томилось несколько часов. Но с помощью консервированной фасоли и помидоров вы приготовите его за 30 минут. Подавайте с бурым рисом, богатым клетчаткой. 	https://grandkulinar.ru/recepies/4668-chili-s-dvumya-vidami-fasoli.html
99	Фасолевый суп-пюре с сырными тостами за 10 минут	https://grandkulinar.ru/uploads/posts/2019-03/1553360403_100.jpg	Поместите в куриный бульон веточки розмарина и тимьяна всего на несколько минут, чтобы придать этому кремовому супу с фасолью яркий вкус. Тосты поджариваются под верхним огнем (а не на сливочном масле) и подаются открытыми с топпингом из сочных нарезанных помидоров. 	https://grandkulinar.ru/recepies/9462-fasolevyy-sup-pyure-s-syrnymi-tostami-za-10-minut.html
100	Натуральные котлеты из индейки с перловым салатом	https://grandkulinar.ru/uploads/posts/2019-03/1553360332_101.jpg	Этот сбалансированный ужин из индюшиных котлет, перловой каши и брюссельской капусты содержит все самое полезное: белки, овощи и цельные зерна. 	https://grandkulinar.ru/recepies/1319-naturalnye-kotlety-iz-indeyki-s-perlovym-salatom.html
101	Тилапия с баклажанами на гриле по-мароккански	https://grandkulinar.ru/uploads/posts/2019-03/1553360316_102.jpg	Универсальная и недорогая тилапия приобретает марокканский колорит благодаря кускусу, баклажану и соусу песто. 	https://grandkulinar.ru/recepies/7314-tilapiya-s-baklazhanami-na-grile-po-marokkanski.html
102	Ленивый сэндвич – Неряха Джо «Слоппи Джо»	https://grandkulinar.ru/uploads/posts/2019-03/1553360330_103.jpg	Эти мясные сэндвичи в стиле закусочной обладают знакомым с детства вкусом, но они достаточно постные, так что их можно смело готовить для всей семьи. 	https://grandkulinar.ru/recepies/2531-lenivyy-sendvich-neryaha-dzho-sloppi-dzho.html
103	Стейк из индейки с картофельным пюре и апельсиновым соусом	https://grandkulinar.ru/uploads/posts/2019-03/1553360357_104.jpg	Куриный бульон, мед, горчица, сок апельсина и немного сливок сочетаются в ароматном соусе для постных котлет из индейки. Цитрусовый вкус чудесно дополняет пюре из батата. 	https://grandkulinar.ru/recepies/9463-steyk-iz-indeyki-s-kartofelnym-pyure-i-apelsinovym-sousom.html
104	Спагетти с тилапией в остром томатном соусе	https://grandkulinar.ru/uploads/posts/2019-03/1553360320_105.jpg	Чеснок, травы и хлопья красного перца наполняют томатный соус богатым вкусом. Тилапия — отличный источник белка, а мультизлаковые спагетти обогащают блюдо клетчаткой. Что еще приятнее, паста готова уже через 35 минут. 	https://grandkulinar.ru/recepies/1678-spagetti-s-tilapiey-v-ostrom-tomatnom-souse.html
105	Рулеты с ветчиной, сыром и яблоком	https://grandkulinar.ru/uploads/posts/2019-03/1553360385_106.jpg	Эти сытные рулеты понравятся и детям, и взрослым; они начиняются постной ветчиной, швейцарским сыром, латуком, яблоком, медом с горчицей и укропом. 	https://grandkulinar.ru/recepies/811-rulety-s-vetchinoy-syrom-i-yablokom.html
106	Стир-фрай с курицей и арахисом	https://grandkulinar.ru/uploads/posts/2019-03/1553360346_107.jpg	Этот рецепт станет вашим фаворитом на те случаи, когда хочется чего-то очень вкусного и несложного. Обжаренная курица и нежная капуста приобретают сладко-соленый оттенок благодаря соевому соусу и рисовому уксусу. Свежий очищенный имбирь придает остроту, а жареный арахис — хрустящую текстуру. 	https://grandkulinar.ru/recepies/814-stir-fray-s-kuricey-i-arahisom.html
107	Овощной суп с лапшой	https://grandkulinar.ru/uploads/posts/2019-03/1553360387_108.jpg	Этот суп одинаково хорошо подходит для обеда и ужина; сытный и согревающий, он идеален в дождливую погоду. 	https://grandkulinar.ru/recepies/9309-ovoschnoy-sup-s-lapshoy.html
108	Жареные куриные грудки под соусом с травами и имбирём	https://grandkulinar.ru/uploads/posts/2019-03/1553360317_109.jpg	Блюдо из курицы с имбирем, базиликом и мятой готовится на одной сковороде всего за 25 минут. 	https://grandkulinar.ru/recepies/9464-zharenye-kurinye-grudki-pod-sousom-s-travami-i-imbirem.html
109	Жареная в духовке тилапия с медово-йогуртовым соусом	https://grandkulinar.ru/uploads/posts/2019-03/1553360358_110.jpg	Джада приправляет запеченное филе белой рыбы простым кремовым соусом. Блюдо готовится меньше 20 минут, но оно такое вкусное, будто вы потратили на него весь день. 	https://grandkulinar.ru/recepies/9465-zharenaya-v-duhovke-tilapiya-s-medovo-yogurtovym-sousom.html
110	Салат из креветок и снежного горошка	https://grandkulinar.ru/uploads/posts/2019-03/1553360336_111.jpg	Для очень быстрого салата с азиатской ноткой Элли использует уже готовые креветки. Сделайте кунжутную заправку, затем добавьте редис, зеленый лук и свежий снежный горошек. 	https://grandkulinar.ru/recepies/9466-salat-iz-krevetok-i-snezhnogo-goroshka.html
111	Говядина с бататом в ароматном бульоне	https://grandkulinar.ru/uploads/posts/2019-03/1553360406_112.jpg	Приготовьте бульон, добавив ингредиенты с насыщенными вкусами: устричный соус, терияки, свежий имбирь и коричневый сахар. Томите овощи в бульоне и затем подавайте с тонко нарезанным жареным на гриле стейком. 	https://grandkulinar.ru/recepies/9467-govyadina-s-batatom-v-aromatnom-bulone.html
112	Свиная вырезка с тушеной капустой и яблоками	https://grandkulinar.ru/uploads/posts/2019-03/1553360403_113.jpg	Свиная вырезка — недорогой и быстрый в приготовлении продукт. Разрежьте ее на «стейки» и подавайте с капустой и яблоками, которые готовятся в ароматной сочной смеси. 	https://grandkulinar.ru/recepies/6486-svinaya-vyrezka-s-tushenoy-kapustoy-i-yablokami.html
113	Азиатская лапша с тофу	https://grandkulinar.ru/uploads/posts/2019-03/1553360378_114.jpg	Приготовьте порцию согревающего азиатского супа с тофу, лапшой удон и зеленью менее чем за 20 минут.	https://grandkulinar.ru/recepies/7739-aziatskaya-lapsha-s-tofu.html
\.


--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 214
-- Name: rancipe_db_recipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rancipe_db_recipe_id_seq', 113, true);


--
-- TOC entry 3175 (class 2606 OID 32821)
-- Name: recipes recipe_id_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipe_id_pkey PRIMARY KEY (recipe_id);


--
-- TOC entry 3177 (class 2606 OID 32830)
-- Name: recipes recipe_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipe_name_unique UNIQUE (recipe_name);


-- Completed on 2022-12-17 20:51:01

--
-- PostgreSQL database dump complete
--

