.class Lcom/lljjcoder/style/citylist/CityListSelectActivity$2;
.super Ljava/lang/Object;
.source "CityListSelectActivity.java"

# interfaces
.implements Lcom/lljjcoder/style/citylist/sortlistview/SideBar$OnTouchingLetterChangedListener;


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

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$2;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$2;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    iget-object v0, v0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->adapter:Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Lcom/lljjcoder/style/citylist/sortlistview/SortAdapter;->getPositionForSection(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$2;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    iget-object v0, v0, Lcom/lljjcoder/style/citylist/CityListSelectActivity;->sortListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method
