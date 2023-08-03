.class public final Lcom/im/freechat/ui/chat/history/i;
.super Lcom/im/freechat/ui/chat/history/g;
.source "HistoryMediaAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/history/i;",
        "Lcom/im/freechat/ui/chat/history/g;",
        "Lcom/im/freechat/ui/chat/history/a;",
        "attachmentWrapper",
        "",
        "b",
        "Lf4/k1;",
        "binding",
        "<init>",
        "(Lf4/k1;)V",
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
.field private final b:Lf4/k1;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/k1;)V
    .locals 2
    .param p1    # Lf4/k1;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf4/k1;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/im/freechat/ui/chat/history/g;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/history/i;->b:Lf4/k1;

    return-void
.end method

.method public static synthetic f(Lcom/im/freechat/ui/chat/history/i;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/ui/chat/history/i;->g(Lcom/im/freechat/ui/chat/history/i;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V

    return-void
.end method

.method private static final g(Lcom/im/freechat/ui/chat/history/i;Lcom/im/freechat/ui/chat/history/a;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$attachmentWrapper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/im/freechat/ui/chat/history/g;->c()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lcom/im/freechat/ui/chat/history/a;)V
    .locals 9
    .param p1    # Lcom/im/freechat/ui/chat/history/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "attachmentWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/im/freechat/ui/chat/history/i;->b:Lf4/k1;

    iget-object v1, v1, Lf4/k1;->c:Landroid/widget/ImageView;

    const-string v2, ""

    .line 4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    check-cast v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    invoke-static {v0}, Lcom/im/freechat/extend/p;->l(Lcom/im/freechat/shared/entities/message/ImageAttachment;)Ljava/lang/Object;

    move-result-object v3

    const v4, 0x3ecccccd    # 0.4f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    .line 6
    invoke-static/range {v2 .. v8}, Lcom/im/freechat/extend/m;->s(Landroid/widget/ImageView;Ljava/lang/Object;FZIILjava/lang/Object;)V

    .line 7
    new-instance v0, Lcom/im/freechat/ui/chat/history/h;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/ui/chat/history/h;-><init>(Lcom/im/freechat/ui/chat/history/i;Lcom/im/freechat/ui/chat/history/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
