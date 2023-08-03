.class Lcom/lljjcoder/style/citypickerview/CityPickerView$2;
.super Ljava/lang/Object;
.source "CityPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$2;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$2;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-static {p1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->access$200(Lcom/lljjcoder/style/citypickerview/CityPickerView;)Lcom/lljjcoder/Interface/OnCityItemClickListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lljjcoder/Interface/OnCityItemClickListener;->onCancel()V

    .line 2
    iget-object p1, p0, Lcom/lljjcoder/style/citypickerview/CityPickerView$2;->this$0:Lcom/lljjcoder/style/citypickerview/CityPickerView;

    invoke-virtual {p1}, Lcom/lljjcoder/style/citypickerview/CityPickerView;->hide()V

    return-void
.end method
