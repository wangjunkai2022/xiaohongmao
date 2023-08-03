.class public Lcom/lljjcoder/style/citythreelist/CityActivity;
.super Landroid/app/Activity;
.source "CityActivity.java"


# instance fields
.field private area:Lcom/lljjcoder/style/citythreelist/CityBean;

.field private cityBean:Lcom/lljjcoder/style/citythreelist/CityBean;

.field private cityName:Ljava/lang/String;

.field private mCityNameTv:Landroid/widget/TextView;

.field private mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mImgBack:Landroid/widget/ImageView;

.field private mProInfo:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mProInfo:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->cityName:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/lljjcoder/style/citythreelist/CityBean;

    invoke-direct {v0}, Lcom/lljjcoder/style/citythreelist/CityBean;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->cityBean:Lcom/lljjcoder/style/citythreelist/CityBean;

    .line 5
    new-instance v0, Lcom/lljjcoder/style/citythreelist/CityBean;

    invoke-direct {v0}, Lcom/lljjcoder/style/citythreelist/CityBean;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->area:Lcom/lljjcoder/style/citythreelist/CityBean;

    return-void
.end method

.method static synthetic access$000(Lcom/lljjcoder/style/citythreelist/CityActivity;)Lcom/lljjcoder/style/citythreelist/CityBean;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->cityBean:Lcom/lljjcoder/style/citythreelist/CityBean;

    return-object p0
.end method

.method private initView()V
    .locals 4

    .line 1
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->img_left:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mImgBack:Landroid/widget/ImageView;

    .line 2
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->cityname_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mCityNameTv:Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mImgBack:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mImgBack:Landroid/widget/ImageView;

    new-instance v3, Lcom/lljjcoder/style/citythreelist/CityActivity$2;

    invoke-direct {v3, p0}, Lcom/lljjcoder/style/citythreelist/CityActivity$2;-><init>(Lcom/lljjcoder/style/citythreelist/CityActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mCityNameTv:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->city_recyclerview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/lljjcoder/widget/RecycleViewDividerForList;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/lljjcoder/widget/RecycleViewDividerForList;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private setData(Lcom/lljjcoder/style/citylist/bean/CityInfoBean;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getCityList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mCityNameTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getCityList()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/lljjcoder/style/citythreelist/CityAdapter;

    invoke-direct {v0, p0, p1}, Lcom/lljjcoder/style/citythreelist/CityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 5
    iget-object v1, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    new-instance v1, Lcom/lljjcoder/style/citythreelist/CityActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/lljjcoder/style/citythreelist/CityActivity$1;-><init>(Lcom/lljjcoder/style/citythreelist/CityActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/lljjcoder/style/citythreelist/CityAdapter;->setOnItemClickListener(Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "area"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/lljjcoder/style/citythreelist/CityBean;

    iput-object p2, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->area:Lcom/lljjcoder/style/citythreelist/CityBean;

    .line 3
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 4
    iget-object p3, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->cityBean:Lcom/lljjcoder/style/citythreelist/CityBean;

    const-string v0, "city"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    iget-object p3, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->area:Lcom/lljjcoder/style/citythreelist/CityBean;

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

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

    iput-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mProInfo:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    .line 4
    invoke-direct {p0}, Lcom/lljjcoder/style/citythreelist/CityActivity;->initView()V

    .line 5
    iget-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityActivity;->mProInfo:Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    invoke-direct {p0, p1}, Lcom/lljjcoder/style/citythreelist/CityActivity;->setData(Lcom/lljjcoder/style/citylist/bean/CityInfoBean;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
