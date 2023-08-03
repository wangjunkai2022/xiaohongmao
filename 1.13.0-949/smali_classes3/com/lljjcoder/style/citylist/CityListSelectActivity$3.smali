.class Lcom/lljjcoder/style/citylist/CityListSelectActivity$3;
.super Ljava/lang/Object;
.source "CityListSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citylist/CityListSelectActivity;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/citylist/CityListSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$3;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$3;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    iget-object p1, p1, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->adapter:Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;

    invoke-virtual {p1, p3}, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;

    invoke-virtual {p1}, Lcom/lljjcoder/style/citylist/sortlistview/SortModel;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$3;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    invoke-static {p2}, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->access$100(Lcom/lljjcoder/style/citylist/CityListSelectActivity;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/lljjcoder/style/citylist/bean/CityInfoBean;->findCity(Ljava/util/List;Ljava/lang/String;)Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->access$002(Lcom/lljjcoder/style/citylist/CityListSelectActivity;Lcom/lljjcoder/style/citylist/bean/CityInfoBean;)Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object p3, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$3;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    invoke-static {p3}, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->access$000(Lcom/lljjcoder/style/citylist/CityListSelectActivity;)Lcom/lljjcoder/style/citylist/bean/CityInfoBean;

    move-result-object p3

    const-string p4, "cityinfo"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$3;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    iget-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$3;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
