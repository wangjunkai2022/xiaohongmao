.class public final Lcom/im/freechat/ui/create/namegroup/NameGroupFragment$a;
.super Ljava/lang/Object;
.source "TextView.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1\n+ 2 NameGroupFragment.kt\ncom/im/freechat/ui/create/namegroup/NameGroupFragment\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$1\n+ 5 TextView.kt\nandroidx/core/widget/TextViewKt$addTextChangedListener$2\n*L\n1#1,97:1\n52#2:98\n53#2,4:101\n254#3,2:99\n71#4:105\n77#5:106\n*S KotlinDebug\n*F\n+ 1 NameGroupFragment.kt\ncom/im/freechat/ui/create/namegroup/NameGroupFragment\n*L\n52#1:99,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J*\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008H\u0016J*\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016\u00a8\u0006\u000f\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1",
        "Landroid/text/TextWatcher;",
        "Landroid/text/Editable;",
        "s",
        "",
        "afterTextChanged",
        "",
        "text",
        "",
        "start",
        "count",
        "after",
        "beforeTextChanged",
        "before",
        "onTextChanged",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;


# direct methods
.method public constructor <init>(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment$a;->a:Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1    # Landroid/text/Editable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment$a;->a:Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;

    invoke-static {v0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->r0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)Lf4/q;

    move-result-object v0

    iget-object v0, v0, Lf4/q;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v1, "binding.createFab"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    .line 2
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 3
    invoke-static {p1}, Lkotlin/text/StringsKt;->firstOrNull(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, ""

    .line 4
    :cond_4
    iget-object v1, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment$a;->a:Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;

    invoke-static {v1}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->r0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)Lf4/q;

    move-result-object v1

    iget-object v1, v1, Lf4/q;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment$a;->a:Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;

    invoke-static {v0}, Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;->r0(Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;)Lf4/q;

    move-result-object v0

    iget-object v0, v0, Lf4/q;->i:Landroid/widget/TextView;

    const-string v1, "binding.tvGroupAvatar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    invoke-static {v0, p1}, Lcom/im/freechat/utils/v;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method
