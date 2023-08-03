.class Lcom/lljjcoder/style/cityjd/JDCityPicker$1;
.super Ljava/lang/Object;
.source "JDCityPicker.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/cityjd/JDCityPicker;->initJDCityPickerPop()V
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

    iput-object p1, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$1;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/lljjcoder/style/cityjd/JDCityPicker$1;->this$0:Lcom/lljjcoder/style/cityjd/JDCityPicker;

    invoke-static {v0}, Lcom/lljjcoder/style/cityjd/JDCityPicker;->access$000(Lcom/lljjcoder/style/cityjd/JDCityPicker;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/lljjcoder/utils/utils;->setBackgroundAlpha(Landroid/content/Context;F)V

    return-void
.end method
