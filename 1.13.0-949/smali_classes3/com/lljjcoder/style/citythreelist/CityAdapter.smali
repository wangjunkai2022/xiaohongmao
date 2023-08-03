.class public Lcom/lljjcoder/style/citythreelist/CityAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;,
        Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field cityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private mOnItemClickListener:Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/lljjcoder/style/citylist/bean/CityInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter;->cityList:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/lljjcoder/style/citythreelist/CityAdapter;)Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter;->mOnItemClickListener:Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/lljjcoder/style/citythreelist/CityAdapter;->onBindViewHolder(Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;I)V
    .locals 2

    .line 2
    iget-object v0, p1, Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;->tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter;->cityList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    invoke-virtual {v1}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p1, Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;->tv:Landroid/widget/TextView;

    new-instance v0, Lcom/lljjcoder/style/citythreelist/CityAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/lljjcoder/style/citythreelist/CityAdapter$1;-><init>(Lcom/lljjcoder/style/citythreelist/CityAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lljjcoder/style/citythreelist/CityAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;
    .locals 3

    .line 2
    new-instance p2, Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;

    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter;->context:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/lljjcoder/style/citypickerview/R$layout;->item_citylist:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;-><init>(Lcom/lljjcoder/style/citythreelist/CityAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter;->mOnItemClickListener:Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;

    return-void
.end method
