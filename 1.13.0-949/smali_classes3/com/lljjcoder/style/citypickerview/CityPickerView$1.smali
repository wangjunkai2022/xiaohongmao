.class Lcom/lljjcoder/style/citypickerview/CityPickerView$1;
.super Ljava/lang/Object;
.source "CityPickerView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lljjcoder/style/citypickerview/CityPickerView;->initCityPickerPopwindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;


# direct methods
.method constructor <init>(Lcom/lljjcoder/style/citypickerview/CityPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$1;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$1;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {v0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$000(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/citywheel/CityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lljjcoder/citywheel/CityConfig;->isShowBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$1;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {v0}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$100(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/lljjcoder/utils/utils;->setBackgroundAlpha(Landroid/content/Context;F)V

    :cond_0
    return-void
.end method
