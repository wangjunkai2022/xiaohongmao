.class public Lcom/lljjcoder/style/citythreelist/ProvinceActivity;
.super Landroid/app/Activity;
.source "ProvinceActivity.java"


# static fields
.field public static final RESULT_DATA:I = 0x3e9


# instance fields
.field private mCityNameTv:Landroid/widget/TextView;

.field private mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private provinceBean:Lcom/lljjcoder/style/citythreelist/CityBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lcom/lljjcoder/style/citythreelist/CityBean;

    invoke-direct {v0}, Lcom/lljjcoder/style/citythreelist/CityBean;-><init>()V

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/ProvinceActivity;->provinceBean:Lcom/lljjcoder/style/citythreelist/CityBean;

    return-void
.end method

.method static synthetic access$000(Lcom/lljjcoder/style/citythreelist/ProvinceActivity;)Lcom/lljjcoder/style/citythreelist/CityBean;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citythreelist/ProvinceActivity;->provinceBean:Lcom/lljjcoder/style/citythreelist/CityBean;

    return-object p0
.end method

.method private initView()V
    .locals 4

    .line 1
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->cityname_tv:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/ProvinceActivity;->mCityNameTv:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9\u7701\u4efd"

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v0, Lcom/lljjcoder/style/citypickerview/R$id;->city_recyclerview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/lljjcoder/style/citythreelist/ProvinceActivity;->mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/ProvinceActivity;->mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/lljjcoder/widget/RecycleViewDividerForList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/lljjcoder/widget/RecycleViewDividerForList;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private setData()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->getInstance()Lcom/lljjcoder/style/citylist/utils/CityListLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/style/citylist/utils/CityListLoader;->getProListData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/lljjcoder/style/citythreelist/CityAdapter;

    invoke-direct {v1, p0, v0}, Lcom/lljjcoder/style/citythreelist/CityAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 3
    iget-object v2, p0, Lcom/lljjcoder/style/citythreelist/ProvinceActivity;->mCityRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    new-instance v2, Lcom/lljjcoder/style/citythreelist/ProvinceActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/lljjcoder/style/citythreelist/ProvinceActivity$1;-><init>(Lcom/lljjcoder/style/citythreelist/ProvinceActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/lljjcoder/style/citythreelist/CityAdapter;->setOnItemClickListener(Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "area"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/lljjcoder/style/citythreelist/CityBean;

    const-string v0, "city"

    .line 3
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/lljjcoder/style/citythreelist/CityBean;

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/lljjcoder/style/citythreelist/ProvinceActivity;->provinceBean:Lcom/lljjcoder/style/citythreelist/CityBean;

    const-string v3, "province"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 8
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/lljjcoder/style/citypickerview/R$layout;->activity_citylist:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/lljjcoder/style/citythreelist/ProvinceActivity;->initView()V

    .line 4
    invoke-direct {p0}, Lcom/lljjcoder/style/citythreelist/ProvinceActivity;->setData()V

    return-void
.end method
