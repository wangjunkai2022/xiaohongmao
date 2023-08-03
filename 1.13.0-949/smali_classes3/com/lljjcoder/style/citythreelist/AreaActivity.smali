.class public Lcom/lljjcoder/style/citythreelist/AreaActivity;
.super Landroid/app/Activity;
.source "AreaActivity.java"


# instance fields
.field private areaBean:Lcom/lljjcoder/style/citythreelist/CityBean;

.field private mCityNameTv:Landroid/widget/TextView;

.field private mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mImgBack:Landroid/widget/ImageView;

.field private mProCityInfo:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mProCityInfo:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    .line 3
    new-instance v0, Lcom/lljjcoder/style/citythreelist/CityBean;

    invoke-direct {v0}, Lcom/lljjcoder/style/citythreelist/CityBean;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->areaBean:Lcom/lljjcoder/style/citythreelist/CityBean;

    return-void
.end method

.method static synthetic access$000(Lcom/lljjcoder/style/citythreelist/AreaActivity;)Lcom/lljjcoder/style/citythreelist/CityBean;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->areaBean:Lcom/lljjcoder/style/citythreelist/CityBean;

    return-object p0
.end method

.method private initView()V
    .locals 4

    .line 1
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->img_left:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mImgBack:Landroid/widget/ImageView;

    .line 2
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->cityname_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mCityNameTv:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mImgBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mImgBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/lljjcoder/style/citythreelist/AreaActivity$2;

    invoke-direct {v2, p0}, Lcom/lljjcoder/style/citythreelist/AreaActivity$2;-><init>(Lcom/lljjcoder/style/citythreelist/AreaActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->city_recyclerview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/lljjcoder/widget/RecycleViewDividerForList;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/lljjcoder/widget/RecycleViewDividerForList;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private setData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mProCityInfo:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mCityNameTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mProCityInfo:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    invoke-virtual {v2}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mProCityInfo:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    invoke-virtual {v0}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v1, Lcom/lljjcoder/style/citythreelist/CityAdapter;

    invoke-direct {v1, p0, v0}, Lcom/lljjcoder/style/citythreelist/CityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 5
    iget-object v2, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    new-instance v2, Lcom/lljjcoder/style/citythreelist/AreaActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/lljjcoder/style/citythreelist/AreaActivity$1;-><init>(Lcom/lljjcoder/style/citythreelist/AreaActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/lljjcoder/style/citythreelist/CityAdapter;->setOnItemClickListener(Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/lljjcoder/style/citypickerview/R$layout;->activity_citylist:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bundata"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    iput-object p1, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity;->mProCityInfo:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    .line 4
    invoke-direct {p0}, Lcom/lljjcoder/style/citythreelist/AreaActivity;->initView()V

    .line 5
    invoke-direct {p0}, Lcom/lljjcoder/style/citythreelist/AreaActivity;->setData()V

    return-void
.end method
