.class Lcom/lljjcoder/style/citythreelist/CityActivity$2;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citythreelist/CityActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citythreelist/CityActivity;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/citythreelist/CityActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityActivity$2;->this$0:Lcom/lljjcoder/style/citythreelist/CityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/lljjcoder/style/citythreelist/CityActivity$2;->this$0:Lcom/lljjcoder/style/citythreelist/CityActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
