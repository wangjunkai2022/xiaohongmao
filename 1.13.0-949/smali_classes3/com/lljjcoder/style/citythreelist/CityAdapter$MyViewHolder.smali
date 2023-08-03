.class Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lljjcoder/style/citythreelist/CityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citythreelist/CityAdapter;

.field tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lljjcoder/style/citythreelist/CityAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;->this$0:Lcom/lljjcoder/style/citythreelist/CityAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget p1, Lcom/lljjcoder/style/citypickerview/R$id;->default_item_city_name_tv:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;->tv:Landroid/widget/TextView;

    return-void
.end method
