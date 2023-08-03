.class Lcom/lljjcoder/style/citycustome/CustomCityPicker$2;
.super Ljava/lang/Object;
.source "CustomCityPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$2;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$2;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-static {p1}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->access$200(Lcom/lljjcoder/style/citycustome/CustomCityPicker;)Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lljjcoder/Interface/OnCustomCityPickerItemClickListener;->onCancel()V

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/citycustome/CustomCityPicker$2;->this$0:Lcom/lljjcoder/style/citycustome/CustomCityPicker;

    invoke-virtual {p1}, Lcom/lljjcoder/style/citycustome/CustomCityPicker;->hide()V

    return-void
.end method
