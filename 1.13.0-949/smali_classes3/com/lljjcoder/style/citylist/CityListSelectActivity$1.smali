.class Lcom/lljjcoder/style/citylist/CityListSelectActivity$1;
.super Ljava/lang/Object;
.source "CityListSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citylist/CityListSelectActivity;->initView()V
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

    iput-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$1;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/lljjcoder/style/citylist/CityListSelectActivity$1;->this$0:Lcom/lljjcoder/style/citylist/CityListSelectActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
