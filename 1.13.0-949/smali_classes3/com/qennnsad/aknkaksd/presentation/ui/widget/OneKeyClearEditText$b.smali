.class Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;
.super Ljava/lang/Object;
.source "OneKeyClearEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-static {v0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;Z)Z

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->a(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->setClearDrawableVisible(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->setClearDrawableVisible(Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->c(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->c(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$c;->onFocusChange(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method
