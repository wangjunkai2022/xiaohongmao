.class public final Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;
.super Landroid/widget/FrameLayout;
.source "ChatDetailsAudioRecordLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018B\u0019\u0008\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u0017\u0010\u001bB!\u0008\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0017\u0010\u001dJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0008\u001a\u00020\u0002R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u000eR\u0017\u0010\u0011\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;",
        "Landroid/widget/FrameLayout;",
        "",
        "d",
        "e",
        "",
        "up",
        "f",
        "c",
        "Ljava/util/Timer;",
        "a",
        "Ljava/util/Timer;",
        "mTimer",
        "",
        "I",
        "mStartTime",
        "Lf4/t1;",
        "binding",
        "Lf4/t1;",
        "getBinding",
        "()Lf4/t1;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "def",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
.field private a:Ljava/util/Timer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final b:Lf4/t1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lf4/t1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/t1;

    move-result-object p1

    const-string v0, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->b:Lf4/t1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lf4/t1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/t1;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->b:Lf4/t1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lf4/t1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lf4/t1;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context), this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->b:Lf4/t1;

    return-void
.end method

.method public static final synthetic a(Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;)I
    .locals 0

    iget p0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->c:I

    return p0
.end method

.method public static final synthetic b(Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;I)V
    .locals 0

    iput p1, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->c:I

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->a:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->c:I

    .line 4
    iget-object v1, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->b:Lf4/t1;

    iget-object v1, v1, Lf4/t1;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/im/freechat/extend/m;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    const-string v1, "timer"

    .line 5
    invoke-static {v1, v0}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object v0

    new-instance v2, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$a;

    invoke-direct {v2, p0}, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout$a;-><init>(Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;)V

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iput-object v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->a:Ljava/util/Timer;

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->c:I

    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->b:Lf4/t1;

    iget-object v0, v0, Lf4/t1;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    sget p1, Lb4/b$s;->X0:I

    goto :goto_0

    :cond_0
    sget p1, Lb4/b$s;->B0:I

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getBinding()Lf4/t1;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/ui/widget/ChatDetailsAudioRecordLayout;->b:Lf4/t1;

    return-object v0
.end method
