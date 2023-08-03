.class public final Lcom/im/freechat/ui/chat/holder/x;
.super Lcom/im/freechat/ui/chat/holder/v;
.source "FileMessageHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(R\u001a\u0010\u0007\u001a\u00020\u00028\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\n\u001a\u00020\u00028\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006R\u001a\u0010\u0010\u001a\u00020\u000b8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u00118\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u00178\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0019\u001a\u0004\u0008\u001e\u0010\u001bR\u001c\u0010\"\u001a\u0004\u0018\u00010\u00178\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0019\u001a\u0004\u0008!\u0010\u001b\u00a8\u0006)"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/holder/x;",
        "Lcom/im/freechat/ui/chat/holder/v;",
        "Landroid/widget/TextView;",
        "v",
        "Landroid/widget/TextView;",
        "C0",
        "()Landroid/widget/TextView;",
        "tvFileName",
        "w",
        "D0",
        "tvFileSize",
        "Landroid/widget/ProgressBar;",
        "x",
        "Landroid/widget/ProgressBar;",
        "B0",
        "()Landroid/widget/ProgressBar;",
        "pbLoaded",
        "Landroidx/cardview/widget/CardView;",
        "y",
        "Landroidx/cardview/widget/CardView;",
        "G0",
        "()Landroidx/cardview/widget/CardView;",
        "messageContent",
        "",
        "z",
        "Ljava/lang/Void;",
        "I0",
        "()Ljava/lang/Void;",
        "tvTextContent",
        "A",
        "H0",
        "tvEditTag",
        "B",
        "F0",
        "ivPreview",
        "Lf4/j0;",
        "binding",
        "",
        "isGroup",
        "<init>",
        "(Lf4/j0;Z)V",
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
.field private final A:Ljava/lang/Void;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final B:Ljava/lang/Void;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final u:Lf4/h0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final v:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final w:Landroid/widget/TextView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final x:Landroid/widget/ProgressBar;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final y:Landroidx/cardview/widget/CardView;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final z:Ljava/lang/Void;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/j0;Z)V
    .locals 2
    .param p1    # Lf4/j0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/im/freechat/ui/chat/holder/v;-><init>(Landroidx/viewbinding/ViewBinding;Z)V

    .line 2
    invoke-virtual {p1}, Lf4/j0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-static {p2}, Lf4/h0;->a(Landroid/view/View;)Lf4/h0;

    move-result-object p2

    const-string v0, "bind(binding.root)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/x;->u:Lf4/h0;

    .line 3
    iget-object v0, p2, Lf4/h0;->d:Landroid/widget/TextView;

    const-string v1, "contentBinding.tvFileName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/ui/chat/holder/x;->v:Landroid/widget/TextView;

    .line 4
    iget-object v0, p2, Lf4/h0;->e:Landroid/widget/TextView;

    const-string v1, "contentBinding.tvFileSize"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/im/freechat/ui/chat/holder/x;->w:Landroid/widget/TextView;

    .line 5
    iget-object p2, p2, Lf4/h0;->c:Landroid/widget/ProgressBar;

    const-string v0, "contentBinding.pbLoaded"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/im/freechat/ui/chat/holder/x;->x:Landroid/widget/ProgressBar;

    .line 6
    iget-object p1, p1, Lf4/j0;->c:Landroidx/cardview/widget/CardView;

    const-string p2, "binding.messageContent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/holder/x;->y:Landroidx/cardview/widget/CardView;

    return-void
.end method


# virtual methods
.method protected B0()Landroid/widget/ProgressBar;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/x;->x:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected C0()Landroid/widget/TextView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/x;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method protected D0()Landroid/widget/TextView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/x;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method public F0()Ljava/lang/Void;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/x;->B:Ljava/lang/Void;

    return-object v0
.end method

.method public G0()Landroidx/cardview/widget/CardView;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/x;->y:Landroidx/cardview/widget/CardView;

    return-object v0
.end method

.method public H0()Ljava/lang/Void;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/x;->A:Ljava/lang/Void;

    return-object v0
.end method

.method public I0()Ljava/lang/Void;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/holder/x;->z:Ljava/lang/Void;

    return-object v0
.end method

.method public bridge synthetic O()Landroid/widget/ImageView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/x;->F0()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public bridge synthetic U()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/x;->G0()Landroidx/cardview/widget/CardView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic X()Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/x;->H0()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic Y()Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/holder/x;->I0()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
