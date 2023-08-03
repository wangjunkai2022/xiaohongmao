.class public final Lcom/im/freechat/ui/chat/message_gallery/c;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "GalleryPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/ui/chat/message_gallery/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/im/freechat/ui/chat/history/a;",
        "Lcom/im/freechat/ui/chat/message_gallery/c$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R6\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R0\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR*\u0010&\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u00068\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/message_gallery/c;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lcom/im/freechat/ui/chat/history/a;",
        "Lcom/im/freechat/ui/chat/message_gallery/c$a;",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "h",
        "holder",
        "position",
        "",
        "g",
        "Lkotlin/Function2;",
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "a",
        "Lkotlin/jvm/functions/Function2;",
        "e",
        "()Lkotlin/jvm/functions/Function2;",
        "j",
        "(Lkotlin/jvm/functions/Function2;)V",
        "playListener",
        "Lkotlin/Function1;",
        "Landroid/widget/FrameLayout;",
        "b",
        "Lkotlin/jvm/functions/Function1;",
        "f",
        "()Lkotlin/jvm/functions/Function1;",
        "k",
        "(Lkotlin/jvm/functions/Function1;)V",
        "playerViewAttachListener",
        "value",
        "c",
        "I",
        "d",
        "()I",
        "i",
        "(I)V",
        "currentlyPlaying",
        "<init>",
        "()V",
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
.field private a:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/FrameLayout;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/im/freechat/ui/chat/message_gallery/d;->a()Lcom/im/freechat/ui/chat/message_gallery/d$a;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/im/freechat/ui/chat/message_gallery/c;->c:I

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/ui/chat/message_gallery/c;->c:I

    return v0
.end method

.method public final e()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/message_gallery/c;->a:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final f()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/widget/FrameLayout;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/chat/message_gallery/c;->b:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public g(Lcom/im/freechat/ui/chat/message_gallery/c$a;I)V
    .locals 2
    .param p1    # Lcom/im/freechat/ui/chat/message_gallery/c$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/im/freechat/ui/chat/message_gallery/c$b;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/chat/message_gallery/c$b;-><init>(Lcom/im/freechat/ui/chat/message_gallery/c;)V

    invoke-virtual {p1, v0}, Lcom/im/freechat/ui/chat/message_gallery/c$a;->e(Lkotlin/jvm/functions/Function2;)V

    .line 2
    new-instance v0, Lcom/im/freechat/ui/chat/message_gallery/c$c;

    invoke-direct {v0, p0}, Lcom/im/freechat/ui/chat/message_gallery/c$c;-><init>(Lcom/im/freechat/ui/chat/message_gallery/c;)V

    invoke-virtual {p1, v0}, Lcom/im/freechat/ui/chat/message_gallery/c$a;->f(Lkotlin/jvm/functions/Function1;)V

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(position)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/im/freechat/ui/chat/history/a;

    iget v1, p0, Lcom/im/freechat/ui/chat/message_gallery/c;->c:I

    invoke-virtual {p1, v0, p2, v1}, Lcom/im/freechat/ui/chat/message_gallery/c$a;->c(Lcom/im/freechat/ui/chat/history/a;II)V

    return-void
.end method

.method public h(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/chat/message_gallery/c$a;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcom/im/freechat/ui/chat/message_gallery/c$a;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lf4/g1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/g1;

    move-result-object p1

    const-string v0, "inflate(LayoutInflater.f\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p2, p1}, Lcom/im/freechat/ui/chat/message_gallery/c$a;-><init>(Lf4/g1;)V

    return-object p2
.end method

.method public final i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/im/freechat/ui/chat/message_gallery/c;->c:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final j(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/c;->a:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final k(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/FrameLayout;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/c;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/im/freechat/ui/chat/message_gallery/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/message_gallery/c;->g(Lcom/im/freechat/ui/chat/message_gallery/c$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/ui/chat/message_gallery/c;->h(Landroid/view/ViewGroup;I)Lcom/im/freechat/ui/chat/message_gallery/c$a;

    move-result-object p1

    return-object p1
.end method
