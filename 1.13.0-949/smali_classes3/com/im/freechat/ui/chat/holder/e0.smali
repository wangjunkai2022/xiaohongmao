.class public final Lcom/im/freechat/ui/chat/holder/e0;
.super Lcom/im/freechat/ui/chat/holder/d0;
.source "ImageMessageHolder.kt"

# interfaces
.implements Lcom/im/freechat/ui/chat/holder/j0;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 R\u001a\u0010\u0008\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u000e\u001a\u00020\t8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/e0;",
        "Lcom/im/freechat/ui/chat/holder/d0;",
        "Lcom/im/freechat/ui/chat/holder/j0;",
        "Landroidx/cardview/widget/CardView;",
        "w",
        "Landroidx/cardview/widget/CardView;",
        "C0",
        "()Landroidx/cardview/widget/CardView;",
        "messageContent",
        "Landroid/widget/ImageView;",
        "x",
        "Landroid/widget/ImageView;",
        "O",
        "()Landroid/widget/ImageView;",
        "ivPreview",
        "Lcom/im/freechat/ui/widget/TextMessageView;",
        "y",
        "Lcom/im/freechat/ui/widget/TextMessageView;",
        "D0",
        "()Lcom/im/freechat/ui/widget/TextMessageView;",
        "tvTextContent",
        "Landroid/widget/TextView;",
        "z",
        "Landroid/widget/TextView;",
        "X",
        "()Landroid/widget/TextView;",
        "tvEditTag",
        "Lf4/k0;",
        "binding",
        "",
        "isGroup",
        "<init>",
        "(Lf4/k0;Z)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final w:Landroidx/cardview/widget/CardView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final x:Landroid/widget/ImageView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final y:Lcom/im/freechat/ui/widget/TextMessageView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final z:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/k0;Z)V
    .locals 1
    .param p1    # Lf4/k0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/d0;-><init>(Landroidx/viewbinding/ViewBinding;Z)V

    .line 2
    iget-object p2, p1, Lf4/k0;->d:Landroidx/cardview/widget/CardView;

    const-string v0, "binding.messageContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/e0;->w:Landroidx/cardview/widget/CardView;

    .line 3
    iget-object p2, p1, Lf4/k0;->c:Landroid/widget/ImageView;

    const-string v0, "binding.ivPre"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/e0;->x:Landroid/widget/ImageView;

    .line 4
    iget-object p2, p1, Lf4/k0;->e:Lcom/im/freechat/ui/widget/TextMessageView;

    const-string v0, "binding.tvDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/e0;->y:Lcom/im/freechat/ui/widget/TextMessageView;

    .line 5
    iget-object p1, p1, Lf4/k0;->f:Landroid/widget/TextView;

    const-string p2, "binding.tvEdited"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/e0;->z:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public C0()Landroidx/cardview/widget/CardView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/e0;->w:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method public D0()Lcom/im/freechat/ui/widget/TextMessageView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/e0;->y:Lcom/im/freechat/ui/widget/TextMessageView;

    return-object v0
.end method

.method public O()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/e0;->x:Landroid/widget/ImageView;

    return-object v0
.end method

.method public bridge synthetic U()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/e0;->C0()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public X()Landroid/widget/TextView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/e0;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic Y()Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/e0;->D0()Lcom/im/freechat/ui/widget/TextMessageView;

    move-result-object v0

    return-object v0
.end method
