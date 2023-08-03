.class public Lcom/lljjcoder/style/citylist/CityListSelectActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CityListSelectActivity.java"


# static fields
.field public static final CITY_SELECT_RESULT_FRAG:I = 0x32

.field public static sCityInfoBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adapter:Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;

.field private characterParser:Lcom/lljjcoder/style/citylist/sortlistview/CharacterParser;

.field private cityInfoBean:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

.field private cityListInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field imgBack:Landroid/widget/ImageView;

.field mCityTextSearch:Lcom/lljjcoder/style/citylist/widget/CleanableEditView;

.field mCurrentCity:Landroid/widget/TextView;

.field mCurrentCityTag:Landroid/widget/TextView;

.field mDialog:Landroid/widget/TextView;

.field mLocalCity:Landroid/widget/TextView;

.field mLocalCityTag:Landroid/widget/TextView;

.field public mPinYinUtils:Lcom/lljjcoder/utils/PinYinUtils;

.field mSidrbar:Lcom/lljjcoder/style/citylist/sortlistview/SideBar;

.field private pinyinComparator:Lcom/lljjcoder/style/citylist/sortlistview/PinyinComparator;

.field sortListView:Landroid/widget/ListView;

.field private sourceDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/sortlistview/SortModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->sCityInfoBeanList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->cityListInfo:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    invoke-direct {v0}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->cityInfoBean:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    .line 4
    new-instance v0, Lcom/lljjcoder/utils/PinYinUtils;

    invoke-direct {v0}, Lcom/lljjcoder/utils/PinYinUtils;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mPinYinUtils:Lcom/lljjcoder/utils/PinYinUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/lljjcoder/style/citylist/CityListSelectActivity;)Lcom/lljjcoder/style/citylist/bean/CityInfoBean;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->cityInfoBean:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    return-object p0
.end method

.method static synthetic access$002(Lcom/lljjcoder/style/citylist/CityListSelectActivity;Lcom/lljjcoder/style/citylist/bean/CityInfoBean;)Lcom/lljjcoder/style/citylist/bean/CityInfoBean;
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->cityInfoBean:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lljjcoder/style/citylist/CityListSelectActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->cityListInfo:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lljjcoder/style/citylist/CityListSelectActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->filterData(Ljava/lang/String;)V

    return-void
.end method

.method private filledData(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/sortlistview/SortModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    if-eqz v3, :cond_5

    .line 4
    new-instance v4, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;

    invoke-direct {v4}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;-><init>()V

    .line 5
    invoke-virtual {v3}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    const-string v5, "\u91cd\u5e86\u5e02"

    .line 7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "chang"

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    const-string v6, "chong"

    goto :goto_1

    :cond_0
    const-string v5, "\u957f\u6c99\u5e02"

    .line 8
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "\u957f\u6625\u5e02"

    .line 9
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v5, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mPinYinUtils:Lcom/lljjcoder/utils/PinYinUtils;

    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lljjcoder/utils/PinYinUtils;->getStringPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 12
    invoke-virtual {v4, v3}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->setName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "[A-Z]"

    .line 14
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->setSortLetters(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v3, "#"

    .line 16
    invoke-virtual {v4, v3}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->setSortLetters(Ljava/lang/String;)V

    .line 17
    :goto_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null,cityName:-> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "       pinyin:-> "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "citypicker_log"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method private filterData(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->sourceDateList:Ljava/util/List;

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->sourceDateList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;

    .line 6
    invoke-virtual {v2}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->characterParser:Lcom/lljjcoder/style/citylist/sortlistview/CharacterParser;

    invoke-virtual {v4, v3}, Lcom/lljjcoder/style/citylist/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->pinyinComparator:Lcom/lljjcoder/style/citylist/sortlistview/PinyinComparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->adapter:Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;

    invoke-virtual {p1, v0}, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->updateListView(Ljava/util/List;)V

    return-void
.end method

.method private initList()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->sourceDateList:Ljava/util/List;

    .line 2
    new-instance v0, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;

    iget-object v1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->sourceDateList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->adapter:Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;

    .line 3
    iget-object v1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->sortListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    invoke-static {}, Lcom/lljjcoder/style/citylist/sortlistview/CharacterParser;->getInstance()Lcom/lljjcoder/style/citylist/sortlistview/CharacterParser;

    move-result-object v0

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->characterParser:Lcom/lljjcoder/style/citylist/sortlistview/CharacterParser;

    .line 5
    new-instance v0, Lcom/lljjcoder/style/citylist/sortlistview/PinyinComparator;

    invoke-direct {v0}, Lcom/lljjcoder/style/citylist/sortlistview/PinyinComparator;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->pinyinComparator:Lcom/lljjcoder/style/citylist/sortlistview/PinyinComparator;

    .line 6
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mSidrbar:Lcom/lljjcoder/style/citylist/sortlistview/SideBar;

    iget-object v1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mDialog:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->setTextView(Landroid/widget/TextView;)V

    .line 7
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mSidrbar:Lcom/lljjcoder/style/citylist/sortlistview/SideBar;

    new-instance v1, Lcom/lljjcoder/style/citylist/CityListSelectActivity$2;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citylist/CityListSelectActivity$2;-><init>(Lcom/lljjcoder/style/citylist/CityListSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;->setOnTouchingLetterChangedListener(Lcom/lljjcoder/style/citylist/sortlistview/SideBar$OnTouchingLetterChangedListener;)V

    .line 8
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->sortListView:Landroid/widget/ListView;

    new-instance v1, Lcom/lljjcoder/style/citylist/CityListSelectActivity$3;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citylist/CityListSelectActivity$3;-><init>(Lcom/lljjcoder/style/citylist/CityListSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mCityTextSearch:Lcom/lljjcoder/style/citylist/widget/CleanableEditView;

    new-instance v1, Lcom/lljjcoder/style/citylist/CityListSelectActivity$4;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citylist/CityListSelectActivity$4;-><init>(Lcom/lljjcoder/style/citylist/CityListSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->cityInputText:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citylist/widget/CleanableEditView;

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mCityTextSearch:Lcom/lljjcoder/style/citylist/widget/CleanableEditView;

    .line 2
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->currentCityTag:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mCurrentCityTag:Landroid/widget/TextView;

    .line 3
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->currentCity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mCurrentCity:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->localCityTag:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mLocalCityTag:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->localCity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mLocalCity:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->country_lvcountry:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->sortListView:Landroid/widget/ListView;

    .line 7
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->dialog:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mDialog:Landroid/widget/TextView;

    .line 8
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->sidrbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citylist/sortlistview/SideBar;

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->mSidrbar:Lcom/lljjcoder/style/citylist/sortlistview/SideBar;

    .line 9
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->imgBack:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->imgBack:Landroid/widget/ImageView;

    .line 10
    new-instance v1, Lcom/lljjcoder/style/citylist/CityListSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/lljjcoder/style/citylist/CityListSelectActivity$1;-><init>(Lcom/lljjcoder/style/citylist/CityListSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setCityData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->cityListInfo:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    invoke-virtual {v3}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->sourceDateList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->filledData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->sourceDateList:Ljava/util/List;

    iget-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->pinyinComparator:Lcom/lljjcoder/style/citylist/sortlistview/PinyinComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->adapter:Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/lljjcoder/style/citypickerview/R$layout;->activity_city_list_select:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->initView()V

    .line 4
    invoke-direct {p0}, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->initList()V

    .line 5
    invoke-static {}, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->getInstance()Lcom/lljjcoder/style/citylist/utils/CityListLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->getCityListData()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->setCityData(Ljava/util/List;)V

    return-void
.end method
