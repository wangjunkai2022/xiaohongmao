.class public final Lcom/google/android/exoplayer2/text/pgs/a;
.super Lcom/google/android/exoplayer2/text/c;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/pgs/a$a;
    }
.end annotation


# static fields
.field private static final s:I = 0x14

.field private static final t:I = 0x15

.field private static final u:I = 0x16

.field private static final v:I = 0x80

.field private static final w:B = 0x78t


# instance fields
.field private final o:Lcom/google/android/exoplayer2/util/h0;

.field private final p:Lcom/google/android/exoplayer2/util/h0;

.field private final q:Lcom/google/android/exoplayer2/text/pgs/a$a;

.field private r:Ljava/util/zip/Inflater;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PgsDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/a;->o:Lcom/google/android/exoplayer2/util/h0;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/a;->p:Lcom/google/android/exoplayer2/util/h0;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/text/pgs/a$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/pgs/a$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/a;->q:Lcom/google/android/exoplayer2/text/pgs/a$a;

    return-void
.end method

.method private B(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->h()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/a;->r:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/a;->r:Ljava/util/zip/Inflater;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/a;->p:Lcom/google/android/exoplayer2/util/h0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/pgs/a;->r:Ljava/util/zip/Inflater;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/z0;->A0(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/util/h0;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/a;->p:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/pgs/a;->p:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/util/h0;->Q([BI)V

    :cond_1
    return-void
.end method

.method private static C(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/text/pgs/a$a;)Lcom/google/android/exoplayer2/text/a;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->M()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    if-le v3, v0, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    return-object v4

    :cond_0
    const/16 v0, 0x80

    if-eq v1, v0, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-static {p1, p0, v2}, Lcom/google/android/exoplayer2/text/pgs/a$a;->c(Lcom/google/android/exoplayer2/text/pgs/a$a;Lcom/google/android/exoplayer2/util/h0;I)V

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-static {p1, p0, v2}, Lcom/google/android/exoplayer2/text/pgs/a$a;->b(Lcom/google/android/exoplayer2/text/pgs/a$a;Lcom/google/android/exoplayer2/util/h0;I)V

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-static {p1, p0, v2}, Lcom/google/android/exoplayer2/text/pgs/a$a;->a(Lcom/google/android/exoplayer2/text/pgs/a$a;Lcom/google/android/exoplayer2/util/h0;I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/pgs/a$a;->d()Lcom/google/android/exoplayer2/text/a;

    move-result-object v4

    .line 10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/pgs/a$a;->h()V

    .line 11
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected z([BIZ)Lcom/google/android/exoplayer2/text/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/pgs/a;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/h0;->Q([BI)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/pgs/a;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/pgs/a;->B(Lcom/google/android/exoplayer2/util/h0;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/pgs/a;->q:Lcom/google/android/exoplayer2/text/pgs/a$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/pgs/a$a;->h()V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/pgs/a;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_1

    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/pgs/a;->o:Lcom/google/android/exoplayer2/util/h0;

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/pgs/a;->q:Lcom/google/android/exoplayer2/text/pgs/a$a;

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/text/pgs/a;->C(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/text/pgs/a$a;)Lcom/google/android/exoplayer2/text/a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Lcom/google/android/exoplayer2/text/pgs/b;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/pgs/b;-><init>(Ljava/util/List;)V

    return-object p2
.end method
