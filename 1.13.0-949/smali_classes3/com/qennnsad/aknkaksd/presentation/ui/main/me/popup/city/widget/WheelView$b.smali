.class Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$b;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->w(Z)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/popup/city/widget/WheelView;->w(Z)V

    return-void
.end method
