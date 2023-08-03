.class Lcom/lljjcoder/style/citythreelist/CityActivity$1;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Lcom/lljjcoder/style/citythreelist/CityAdapter$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citythreelist/CityActivity;->setData(Lcom/lljjcoder/style/citylist/bean/CityInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citythreelist/CityActivity;

.field final synthetic val$cityList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/citythreelist/CityActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityActivity$1;->this$0:Lcom/lljjcoder/style/citythreelist/CityActivity;

    iput-object p2, p0, Lcom/lljjcoder/style/citythreelist/CityActivity$1;->val$cityList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityActivity$1;->this$0:Lcom/lljjcoder/style/citythreelist/CityActivity;

    invoke-static {p1}, Lcom/lljjcoder/style/citythreelist/CityActivity;->access$000(Lcom/lljjcoder/style/citythreelist/CityActivity;)Lcom/lljjcoder/style/citythreelist/CityBean;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity$1;->val$cityList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    invoke-virtual {v0}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lljjcoder/style/citythreelist/CityBean;->setId(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityActivity$1;->this$0:Lcom/lljjcoder/style/citythreelist/CityActivity;

    invoke-static {p1}, Lcom/lljjcoder/style/citythreelist/CityActivity;->access$000(Lcom/lljjcoder/style/citythreelist/CityActivity;)Lcom/lljjcoder/style/citythreelist/CityBean;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity$1;->val$cityList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    invoke-virtual {v0}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lljjcoder/style/citythreelist/CityBean;->setName(Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity$1;->this$0:Lcom/lljjcoder/style/citythreelist/CityActivity;

    const-class v1, Lcom/lljjcoder/style/citythreelist/AreaActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/lljjcoder/style/citythreelist/CityActivity$1;->val$cityList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    const-string v0, "bundata"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/lljjcoder/style/citythreelist/CityActivity$1;->this$0:Lcom/lljjcoder/style/citythreelist/CityActivity;

    const/16 v0, 0x3e9

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
