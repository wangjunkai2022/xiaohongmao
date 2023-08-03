.class Lcom/lljjcoder/style/citythreelist/CityAdapter$1;
.super Ljava/lang/Object;
.source "CityAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citythreelist/CityAdapter;->onBindViewHolder(Lcom/lljjcoder/style/citythreelist/CityAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citythreelist/CityAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/citythreelist/CityAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter$1;->this$0:Lcom/lljjcoder/style/citythreelist/CityAdapter;

    iput p2, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter$1;->this$0:Lcom/lljjcoder/style/citythreelist/CityAdapter;

    invoke-static {v0}, Lcom/lljjcoder/style/citythreelist/CityAdapter;->access$000(Lcom/lljjcoder/style/citythreelist/CityAdapter;)Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter$1;->this$0:Lcom/lljjcoder/style/citythreelist/CityAdapter;

    iget-object v1, v1, Lcom/lljjcoder/style/citythreelist/CityAdapter;->cityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter$1;->this$0:Lcom/lljjcoder/style/citythreelist/CityAdapter;

    invoke-static {v0}, Lcom/lljjcoder/style/citythreelist/CityAdapter;->access$000(Lcom/lljjcoder/style/citythreelist/CityAdapter;)Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;

    move-result-object v0

    iget v1, p0, Lcom/lljjcoder/style/citythreelist/CityAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;->onItemSelected(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
