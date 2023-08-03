.class Lcom/lljjcoder/style/citythreelist/AreaActivity$1;
.super Ljava/lang/Object;
.source "AreaActivity.java"

# interfaces
.implements Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citythreelist/AreaActivity;->setData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citythreelist/AreaActivity;

.field final synthetic val$cityList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/citythreelist/AreaActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity$1;->this$0:Lcom/lljjcoder/style/citythreelist/AreaActivity;

    iput-object p2, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity$1;->val$cityList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity$1;->this$0:Lcom/lljjcoder/style/citythreelist/AreaActivity;

    invoke-static {p1}, Lcom/lljjcoder/style/citythreelist/AreaActivity;->access$000(Lcom/lljjcoder/style/citythreelist/AreaActivity;)Lcom/lljjcoder/style/citythreelist/CityBean;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity$1;->val$cityList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    invoke-virtual {v0}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lljjcoder/style/citythreelist/CityBean;->setName(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity$1;->this$0:Lcom/lljjcoder/style/citythreelist/AreaActivity;

    invoke-static {p1}, Lcom/lljjcoder/style/citythreelist/AreaActivity;->access$000(Lcom/lljjcoder/style/citythreelist/AreaActivity;)Lcom/lljjcoder/style/citythreelist/CityBean;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity$1;->val$cityList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    invoke-virtual {p2}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lljjcoder/style/citythreelist/CityBean;->setId(Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    iget-object p2, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity$1;->this$0:Lcom/lljjcoder/style/citythreelist/AreaActivity;

    invoke-static {p2}, Lcom/lljjcoder/style/citythreelist/AreaActivity;->access$000(Lcom/lljjcoder/style/citythreelist/AreaActivity;)Lcom/lljjcoder/style/citythreelist/CityBean;

    move-result-object p2

    const-string v0, "area"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity$1;->this$0:Lcom/lljjcoder/style/citythreelist/AreaActivity;

    const/16 v0, 0x3e9

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/lljjcoder/style/citythreelist/AreaActivity$1;->this$0:Lcom/lljjcoder/style/citythreelist/AreaActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
