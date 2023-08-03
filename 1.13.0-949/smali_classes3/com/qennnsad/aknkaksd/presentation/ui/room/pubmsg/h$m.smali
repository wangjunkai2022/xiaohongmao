.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m;
.super Lcom/bumptech/glide/request/target/e;
.source "PublicChatHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->A(Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/e<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\u0005\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00020\u0002\u0018\u00010\u0004H\u0016J\u0012\u0010\n\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m",
        "Lcom/bumptech/glide/request/target/e;",
        "Landroid/graphics/Bitmap;",
        "resource",
        "Lcom/bumptech/glide/request/transition/f;",
        "transition",
        "",
        "b",
        "Landroid/graphics/drawable/Drawable;",
        "placeholder",
        "k",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m;->d:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m;->e:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/f;)V
    .locals 9
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/f;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/f<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/2addr p2, v0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int p2, p2, v0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m;->e:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "1 "

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m;->d:Landroid/widget/TextView;

    .line 6
    new-instance v8, Lcom/qennnsad/aknkaksd/util/j1$a;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/qennnsad/aknkaksd/util/j1$a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    const/16 v3, 0x21

    .line 7
    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput-object v0, p2, v1

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m;->e:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p2, v2

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public k(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic q(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/f;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$m;->b(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/f;)V

    return-void
.end method
