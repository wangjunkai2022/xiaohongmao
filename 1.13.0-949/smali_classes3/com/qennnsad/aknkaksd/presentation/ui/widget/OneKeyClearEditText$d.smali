.class Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$d;
.super Ljava/lang/Object;
.source "OneKeyClearEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;


# direct methods
.method private constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->setClearDrawableVisible(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
