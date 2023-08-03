.class Lcom/lljjcoder/style/citycustome/CustomCityPicker$1;
.super Ljava/lang/Object;
.source "CustomCityPicker.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citycustome/CustomCityPicker;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$1;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$1;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$000(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/citywheel/CustomConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CustomConfig;->isShowBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$1;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$100(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/lljjcoder/utils/utils;->setBackgroundAlpha(Landroid/content/Context;F)V

    :cond_0
    return-void
.end method
