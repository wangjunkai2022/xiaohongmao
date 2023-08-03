.class Lcom/lljjcoder/style/cityjd/JDCityPicker$9;
.super Ljava/lang/Object;
.source "JDCityPicker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lljjcoder/style/cityjd/JDCityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1802(Lcom/lljjcoder/style/cityjd/JDCityPicker;Ljava/util/List;)Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$900(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/AreaAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1800(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1800(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$500(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$900(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/AreaAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1, v1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$302(Lcom/lljjcoder/style/cityjd/JDCityPicker;I)I

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1702(Lcom/lljjcoder/style/cityjd/JDCityPicker;Ljava/util/List;)Ljava/util/List;

    .line 8
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$800(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/CityAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1700(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1700(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$500(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$800(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/CityAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1, v2}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$302(Lcom/lljjcoder/style/cityjd/JDCityPicker;I)I

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1602(Lcom/lljjcoder/style/cityjd/JDCityPicker;Ljava/util/List;)Ljava/util/List;

    .line 13
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$400(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 14
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$500(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$400(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1602(Lcom/lljjcoder/style/cityjd/JDCityPicker;Ljava/util/List;)Ljava/util/List;

    .line 16
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$400(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 17
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$500(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$400(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Lcom/lljjcoder/style/cityjd/ProvinceAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 18
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$300(Lcom/lljjcoder/style/cityjd/JDCityPicker;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$1900(Lcom/lljjcoder/style/cityjd/JDCityPicker;I)V

    .line 19
    iget-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$9;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$700(Lcom/lljjcoder/style/cityjd/JDCityPicker;)V

    return v2
.end method
