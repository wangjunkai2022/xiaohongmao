.class public final Lcom/giphy/sdk/analytics/batching/d$a;
.super Ljava/lang/Object;
.source "PingbackWrapperRecycler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/analytics/batching/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008!\n\u0002\u0010\t\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008B\u0010CJ|\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u0016\u001a\u0004\u0008\u001f\u0010\u0018\"\u0004\u0008 \u0010\u001aR\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0016\u001a\u0004\u0008\u001b\u0010\u0018\"\u0004\u0008\"\u0010\u001aR$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0016\u001a\u0004\u0008#\u0010\u0018\"\u0004\u0008$\u0010\u001aR$\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\u001e\u0010\'\"\u0004\u0008(\u0010)R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0016\u001a\u0004\u0008%\u0010\u0018\"\u0004\u0008+\u0010\u001aR$\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010\u0016\u001a\u0004\u0008-\u0010\u0018\"\u0004\u0008.\u0010\u001aR\"\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010/\u001a\u0004\u0008\u0015\u00100\"\u0004\u00081\u00102R$\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u0016\u001a\u0004\u00083\u0010\u0018\"\u0004\u00084\u0010\u001aR\"\u0010;\u001a\u0002058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u0016\u001a\u0004\u0008!\u0010\u0018\"\u0004\u0008<\u0010\u001aR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010=\u001a\u0004\u0008,\u0010>\"\u0004\u0008?\u0010@R$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0016\u001a\u0004\u0008*\u0010\u0018\"\u0004\u0008A\u0010\u001a\u00a8\u0006D"
    }
    d2 = {
        "Lcom/giphy/sdk/analytics/batching/d$a;",
        "",
        "",
        "userId",
        "loggedInUserId",
        "randomId",
        "analyticsResponsePayload",
        "referrer",
        "Lcom/giphy/sdk/analytics/models/enums/EventType;",
        "eventType",
        "mediaId",
        "tid",
        "Lcom/giphy/sdk/analytics/models/enums/ActionType;",
        "actionType",
        "sessionId",
        "layoutType",
        "",
        "position",
        "placement",
        "",
        "C",
        "a",
        "Ljava/lang/String;",
        "n",
        "()Ljava/lang/String;",
        "B",
        "(Ljava/lang/String;)V",
        "b",
        "e",
        "s",
        "c",
        "i",
        "w",
        "d",
        "p",
        "j",
        "x",
        "f",
        "Lcom/giphy/sdk/analytics/models/enums/EventType;",
        "()Lcom/giphy/sdk/analytics/models/enums/EventType;",
        "q",
        "(Lcom/giphy/sdk/analytics/models/enums/EventType;)V",
        "g",
        "t",
        "h",
        "l",
        "z",
        "Lcom/giphy/sdk/analytics/models/enums/ActionType;",
        "()Lcom/giphy/sdk/analytics/models/enums/ActionType;",
        "o",
        "(Lcom/giphy/sdk/analytics/models/enums/ActionType;)V",
        "k",
        "y",
        "",
        "J",
        "m",
        "()J",
        "A",
        "(J)V",
        "ts",
        "r",
        "I",
        "()I",
        "v",
        "(I)V",
        "u",
        "<init>",
        "()V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field private e:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private f:Lcom/giphy/sdk/analytics/models/enums/EventType;
    .annotation build Lm8/h;
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field private h:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field public i:Lcom/giphy/sdk/analytics/models/enums/ActionType;

.field private j:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private k:J

.field private l:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private m:I

.field private n:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(J)V
    .locals 0

    iput-wide p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->k:J

    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->a:Ljava/lang/String;

    return-void
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/EventType;Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/ActionType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Lcom/giphy/sdk/analytics/models/enums/EventType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Lcom/giphy/sdk/analytics/models/enums/ActionType;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggedInUserId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsResponsePayload"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaId"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->a:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/giphy/sdk/analytics/batching/d$a;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/giphy/sdk/analytics/batching/d$a;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/giphy/sdk/analytics/batching/d$a;->d:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/giphy/sdk/analytics/batching/d$a;->e:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/giphy/sdk/analytics/batching/d$a;->f:Lcom/giphy/sdk/analytics/models/enums/EventType;

    .line 7
    iput-object p7, p0, Lcom/giphy/sdk/analytics/batching/d$a;->g:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/giphy/sdk/analytics/batching/d$a;->h:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Lcom/giphy/sdk/analytics/batching/d$a;->i:Lcom/giphy/sdk/analytics/models/enums/ActionType;

    .line 10
    iput-object p10, p0, Lcom/giphy/sdk/analytics/batching/d$a;->j:Ljava/lang/String;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->k:J

    .line 12
    iput-object p11, p0, Lcom/giphy/sdk/analytics/batching/d$a;->l:Ljava/lang/String;

    .line 13
    iput p12, p0, Lcom/giphy/sdk/analytics/batching/d$a;->m:I

    .line 14
    iput-object p13, p0, Lcom/giphy/sdk/analytics/batching/d$a;->n:Ljava/lang/String;

    return-void
.end method

.method public final a()Lcom/giphy/sdk/analytics/models/enums/ActionType;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->i:Lcom/giphy/sdk/analytics/models/enums/ActionType;

    if-nez v0, :cond_0

    const-string v1, "actionType"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "analyticsResponsePayload"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final c()Lcom/giphy/sdk/analytics/models/enums/EventType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->f:Lcom/giphy/sdk/analytics/models/enums/EventType;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "loggedInUserId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "mediaId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->m:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->k:J

    return-wide v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/analytics/batching/d$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "userId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final o(Lcom/giphy/sdk/analytics/models/enums/ActionType;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/analytics/models/enums/ActionType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->i:Lcom/giphy/sdk/analytics/models/enums/ActionType;

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->d:Ljava/lang/String;

    return-void
.end method

.method public final q(Lcom/giphy/sdk/analytics/models/enums/EventType;)V
    .locals 0
    .param p1    # Lcom/giphy/sdk/analytics/models/enums/EventType;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->f:Lcom/giphy/sdk/analytics/models/enums/EventType;

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->l:Ljava/lang/String;

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->b:Ljava/lang/String;

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->g:Ljava/lang/String;

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->n:Ljava/lang/String;

    return-void
.end method

.method public final v(I)V
    .locals 0

    iput p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->m:I

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->c:Ljava/lang/String;

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->e:Ljava/lang/String;

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->j:Ljava/lang/String;

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/giphy/sdk/analytics/batching/d$a;->h:Ljava/lang/String;

    return-void
.end method
