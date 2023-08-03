.class public final Lcom/google/android/exoplayer2/extractor/mp4/o;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/o$a;
    }
.end annotation


# static fields
.field public static final l:I = 0x0

.field public static final m:I = 0x1


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Lcom/google/android/exoplayer2/Format;

.field public final g:I

.field public final h:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:I

.field private final k:[Lcom/google/android/exoplayer2/extractor/mp4/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/p;I[J[J)V
    .locals 0
    .param p11    # [Lcom/google/android/exoplayer2/extractor/mp4/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->b:I

    .line 4
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->c:J

    .line 5
    iput-wide p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->d:J

    .line 6
    iput-wide p7, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->e:J

    .line 7
    iput-object p9, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->f:Lcom/google/android/exoplayer2/Format;

    .line 8
    iput p10, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->g:I

    .line 9
    iput-object p11, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->k:[Lcom/google/android/exoplayer2/extractor/mp4/p;

    .line 10
    iput p12, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->j:I

    .line 11
    iput-object p13, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->h:[J

    .line 12
    iput-object p14, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->i:[J

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/extractor/mp4/o;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/exoplayer2/extractor/mp4/o;

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->a:I

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->b:I

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->c:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->d:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->e:J

    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->g:I

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->k:[Lcom/google/android/exoplayer2/extractor/mp4/p;

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->j:I

    iget-object v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->h:[J

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->i:[J

    move-object/from16 v1, v16

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/extractor/mp4/o;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/p;I[J[J)V

    return-object v16
.end method

.method public b(I)Lcom/google/android/exoplayer2/extractor/mp4/p;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/o;->k:[Lcom/google/android/exoplayer2/extractor/mp4/p;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method
