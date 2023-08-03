.class public Lcom/google/android/exoplayer2/extractor/mp4/g;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/g$c;,
        Lcom/google/android/exoplayer2/extractor/mp4/g$b;,
        Lcom/google/android/exoplayer2/extractor/mp4/g$a;
    }
.end annotation


# static fields
.field public static final L:Lcom/google/android/exoplayer2/extractor/q;

.field public static final M:I = 0x1

.field public static final N:I = 0x2

.field public static final O:I = 0x4

.field public static final P:I = 0x10

.field private static final Q:Ljava/lang/String; = "FragmentedMp4Extractor"

.field private static final R:I = 0x73656967

.field private static final S:[B

.field private static final T:Lcom/google/android/exoplayer2/Format;

.field private static final U:I = 0x64

.field private static final V:I = 0x0

.field private static final W:I = 0x1

.field private static final X:I = 0x2

.field private static final Y:I = 0x3

.field private static final Z:I = 0x4


# instance fields
.field private A:J

.field private B:J

.field private C:Lcom/google/android/exoplayer2/extractor/mp4/g$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Lcom/google/android/exoplayer2/extractor/m;

.field private I:[Lcom/google/android/exoplayer2/extractor/e0;

.field private J:[Lcom/google/android/exoplayer2/extractor/e0;

.field private K:Z

.field private final d:I

.field private final e:Lcom/google/android/exoplayer2/extractor/mp4/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/exoplayer2/util/h0;

.field private final i:Lcom/google/android/exoplayer2/util/h0;

.field private final j:Lcom/google/android/exoplayer2/util/h0;

.field private final k:[B

.field private final l:Lcom/google/android/exoplayer2/util/h0;

.field private final m:Lcom/google/android/exoplayer2/util/u0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final n:Lcom/google/android/exoplayer2/metadata/emsg/b;

.field private final o:Lcom/google/android/exoplayer2/util/h0;

.field private final p:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/exoplayer2/extractor/e0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:I

.field private t:I

.field private u:J

.field private v:I

.field private w:Lcom/google/android/exoplayer2/util/h0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:J

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/e;->b:Lcom/google/android/exoplayer2/extractor/mp4/e;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->L:Lcom/google/android/exoplayer2/extractor/q;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->S:[B

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    const-string v1, "application/x-emsg"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->T:Lcom/google/android/exoplayer2/Format;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>(ILcom/google/android/exoplayer2/util/u0;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/u0;)V
    .locals 2
    .param p2    # Lcom/google/android/exoplayer2/util/u0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>(ILcom/google/android/exoplayer2/util/u0;Lcom/google/android/exoplayer2/extractor/mp4/o;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/u0;Lcom/google/android/exoplayer2/extractor/mp4/o;)V
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/util/u0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/extractor/mp4/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>(ILcom/google/android/exoplayer2/util/u0;Lcom/google/android/exoplayer2/extractor/mp4/o;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/u0;Lcom/google/android/exoplayer2/extractor/mp4/o;Ljava/util/List;)V
    .locals 6
    .param p2    # Lcom/google/android/exoplayer2/util/u0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/extractor/mp4/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/u0;",
            "Lcom/google/android/exoplayer2/extractor/mp4/o;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>(ILcom/google/android/exoplayer2/util/u0;Lcom/google/android/exoplayer2/extractor/mp4/o;Ljava/util/List;Lcom/google/android/exoplayer2/extractor/e0;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/util/u0;Lcom/google/android/exoplayer2/extractor/mp4/o;Ljava/util/List;Lcom/google/android/exoplayer2/extractor/e0;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/util/u0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/extractor/mp4/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/extractor/e0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/util/u0;",
            "Lcom/google/android/exoplayer2/extractor/mp4/o;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/extractor/e0;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->d:I

    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->m:Lcom/google/android/exoplayer2/util/u0;

    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->e:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 10
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->f:Ljava/util/List;

    .line 11
    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->r:Lcom/google/android/exoplayer2/extractor/e0;

    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/metadata/emsg/b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/emsg/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->n:Lcom/google/android/exoplayer2/metadata/emsg/b;

    .line 13
    new-instance p1, Lcom/google/android/exoplayer2/util/h0;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/h0;

    .line 14
    new-instance p1, Lcom/google/android/exoplayer2/util/h0;

    sget-object p3, Lcom/google/android/exoplayer2/util/b0;->b:[B

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/util/h0;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->h:Lcom/google/android/exoplayer2/util/h0;

    .line 15
    new-instance p1, Lcom/google/android/exoplayer2/util/h0;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->i:Lcom/google/android/exoplayer2/util/h0;

    .line 16
    new-instance p1, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/h0;

    new-array p1, p2, [B

    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->k:[B

    .line 18
    new-instance p2, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/util/h0;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->l:Lcom/google/android/exoplayer2/util/h0;

    .line 19
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    .line 20
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->q:Ljava/util/ArrayDeque;

    .line 21
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->A:J

    .line 23
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->z:J

    .line 24
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->B:J

    .line 25
    sget-object p1, Lcom/google/android/exoplayer2/extractor/m;->H0:Lcom/google/android/exoplayer2/extractor/m;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/extractor/m;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/exoplayer2/extractor/e0;

    .line 26
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/extractor/e0;

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/e0;

    .line 27
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/extractor/e0;

    return-void
.end method

.method private static A(Lcom/google/android/exoplayer2/util/h0;J)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/h0;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/google/android/exoplayer2/extractor/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    move-result v1

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v9

    if-nez v1, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v5

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/h0;->L()J

    move-result-wide v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/h0;->L()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    .line 10
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/z0;->f1(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/h0;->M()I

    move-result v1

    .line 13
    new-array v7, v1, [I

    .line 14
    new-array v8, v1, [J

    .line 15
    new-array v5, v1, [J

    .line 16
    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide v3, v11

    move-wide/from16 v17, v15

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_2

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    .line 19
    aput v12, v7, v11

    .line 20
    aput-wide v13, v8, v11

    .line 21
    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    .line 22
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/util/z0;->f1(JJJ)J

    move-result-wide v3

    .line 23
    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    .line 24
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 25
    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move-object v5, v12

    move-object/from16 v8, v22

    const/4 v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_1

    .line 26
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    .line 27
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/google/android/exoplayer2/extractor/e;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Lcom/google/android/exoplayer2/extractor/e;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static B(Lcom/google/android/exoplayer2/util/h0;)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->L()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static C(Lcom/google/android/exoplayer2/util/h0;Landroid/util/SparseArray;Z)Lcom/google/android/exoplayer2/extractor/mp4/g$c;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/h0;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$c;",
            ">;Z)",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$c;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/a;->b(I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->L()J

    move-result-wide v1

    .line 7
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->b:Lcom/google/android/exoplayer2/extractor/mp4/q;

    iput-wide v1, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->c:J

    .line 8
    iput-wide v1, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->d:J

    .line 9
    :cond_2
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->e:Lcom/google/android/exoplayer2/extractor/mp4/c;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 11
    :cond_3
    iget v1, p2, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    :goto_1
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v2

    goto :goto_2

    .line 13
    :cond_4
    iget v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/c;->b:I

    :goto_2
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v3

    goto :goto_3

    .line 15
    :cond_5
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/c;->c:I

    :goto_3
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result p0

    goto :goto_4

    .line 17
    :cond_6
    iget p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/c;->d:I

    .line 18
    :goto_4
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->b:Lcom/google/android/exoplayer2/extractor/mp4/q;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/c;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/exoplayer2/extractor/mp4/c;-><init>(IIII)V

    iput-object v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->a:Lcom/google/android/exoplayer2/extractor/mp4/c;

    return-object p1
.end method

.method private static D(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Landroid/util/SparseArray;ZI[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/a$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$c;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const v0, 0x74666864

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->h(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 2
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/g;->C(Lcom/google/android/exoplayer2/util/h0;Landroid/util/SparseArray;Z)Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->b:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 4
    iget-wide v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->r:J

    .line 5
    iget-boolean v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->s:Z

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->k()V

    const/4 v3, 0x1

    .line 7
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->b(Lcom/google/android/exoplayer2/extractor/mp4/g$c;Z)Z

    const v4, 0x74666474

    .line 8
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->h(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object v4

    if-eqz v4, :cond_1

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_1

    .line 9
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->B(Lcom/google/android/exoplayer2/util/h0;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->r:J

    .line 10
    iput-boolean v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->s:Z

    goto :goto_0

    .line 11
    :cond_1
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->r:J

    .line 12
    iput-boolean v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->s:Z

    .line 13
    :goto_0
    invoke-static {p0, p1, p3}, Lcom/google/android/exoplayer2/extractor/mp4/g;->G(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Lcom/google/android/exoplayer2/extractor/mp4/g$c;I)V

    .line 14
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->d:Lcom/google/android/exoplayer2/extractor/mp4/r;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/r;->a:Lcom/google/android/exoplayer2/extractor/mp4/o;

    iget-object p3, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->a:Lcom/google/android/exoplayer2/extractor/mp4/c;

    .line 15
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/extractor/mp4/c;

    iget p3, p3, Lcom/google/android/exoplayer2/extractor/mp4/c;->a:I

    .line 16
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/extractor/mp4/o;->b(I)Lcom/google/android/exoplayer2/extractor/mp4/p;

    move-result-object p1

    const p3, 0x7361697a

    .line 17
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->h(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/p;

    iget-object p3, p3, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {v0, p3, p2}, Lcom/google/android/exoplayer2/extractor/mp4/g;->w(Lcom/google/android/exoplayer2/extractor/mp4/p;Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/extractor/mp4/q;)V

    :cond_2
    const p3, 0x7361696f

    .line 19
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->h(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 20
    iget-object p3, p3, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/extractor/mp4/g;->v(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/extractor/mp4/q;)V

    :cond_3
    const p3, 0x73656e63

    .line 21
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->h(I)Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 22
    iget-object p3, p3, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/extractor/mp4/g;->z(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/extractor/mp4/q;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 23
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/p;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/mp4/g;->x(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/q;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->x1:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p1, :cond_7

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->x1:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 26
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/a;->a:I

    const v2, 0x75756964

    if-ne v1, v2, :cond_6

    .line 27
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {v0, p2, p4}, Lcom/google/android/exoplayer2/extractor/mp4/g;->H(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/extractor/mp4/q;[B)V

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static E(Lcom/google/android/exoplayer2/util/h0;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/h0;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/c;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result p0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/c;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/google/android/exoplayer2/extractor/mp4/c;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static F(Lcom/google/android/exoplayer2/extractor/mp4/g$c;IILcom/google/android/exoplayer2/util/h0;I)I
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    .line 1
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 2
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/a;->b(I)I

    move-result v1

    .line 4
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->d:Lcom/google/android/exoplayer2/extractor/mp4/r;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/r;->a:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 5
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->b:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 6
    iget-object v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->a:Lcom/google/android/exoplayer2/extractor/mp4/c;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/c;

    .line 7
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->h:[I

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/h0;->K()I

    move-result v7

    aput v7, v6, p1

    .line 8
    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->g:[J

    iget-wide v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->c:J

    aput-wide v7, v6, p1

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_0

    .line 9
    aget-wide v7, v6, p1

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v6, p1

    :cond_0
    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 10
    :goto_0
    iget v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/c;->d:I

    if-eqz v6, :cond_2

    .line 11
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v9

    :cond_2
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 12
    :goto_4
    iget-object v13, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->h:[J

    if-eqz v13, :cond_7

    array-length v14, v13

    if-ne v14, v8, :cond_7

    aget-wide v14, v13, v7

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_8

    .line 13
    iget-object v13, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->i:[J

    .line 14
    invoke-static {v13}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    aget-wide v14, v13, v7

    const-wide/32 v16, 0xf4240

    iget-wide v7, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->c:J

    move-wide/from16 v18, v7

    .line 15
    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/z0;->f1(JJJ)J

    move-result-wide v14

    goto :goto_5

    :cond_7
    const-wide/16 v16, 0x0

    :cond_8
    move-wide/from16 v14, v16

    .line 16
    :goto_5
    iget-object v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->i:[I

    .line 17
    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->j:[I

    .line 18
    iget-object v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->k:[J

    .line 19
    iget-object v2, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->l:[Z

    move/from16 v17, v9

    .line 20
    iget v9, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->b:I

    move-object/from16 v18, v2

    const/4 v2, 0x2

    if-ne v9, v2, :cond_9

    const/4 v2, 0x1

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    .line 21
    :goto_6
    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->h:[I

    aget v9, v9, p1

    add-int v9, p4, v9

    move/from16 p2, v2

    .line 22
    iget-wide v2, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->c:J

    move-wide/from16 v27, v14

    move-object v15, v13

    .line 23
    iget-wide v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->r:J

    move-wide/from16 v29, v13

    move/from16 v13, p4

    :goto_7
    if-ge v13, v9, :cond_12

    if-eqz v10, :cond_a

    .line 24
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v14

    goto :goto_8

    :cond_a
    iget v14, v5, Lcom/google/android/exoplayer2/extractor/mp4/c;->b:I

    :goto_8
    invoke-static {v14}, Lcom/google/android/exoplayer2/extractor/mp4/g;->f(I)I

    move-result v14

    if-eqz v11, :cond_b

    .line 25
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v19

    move/from16 v35, v19

    move/from16 v19, v10

    move/from16 v10, v35

    goto :goto_9

    :cond_b
    move/from16 v19, v10

    iget v10, v5, Lcom/google/android/exoplayer2/extractor/mp4/c;->c:I

    :goto_9
    invoke-static {v10}, Lcom/google/android/exoplayer2/extractor/mp4/g;->f(I)I

    move-result v10

    if-eqz v12, :cond_c

    .line 26
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v21

    move/from16 v31, v6

    move/from16 v6, v21

    goto :goto_a

    :cond_c
    if-nez v13, :cond_d

    if-eqz v6, :cond_d

    move/from16 v31, v6

    move/from16 v6, v17

    goto :goto_a

    :cond_d
    move/from16 v31, v6

    .line 27
    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/c;->d:I

    :goto_a
    if-eqz v1, :cond_e

    move/from16 v32, v1

    .line 28
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v1

    move/from16 v33, v11

    move/from16 v34, v12

    int-to-long v11, v1

    const-wide/32 v21, 0xf4240

    mul-long v11, v11, v21

    .line 29
    div-long/2addr v11, v2

    long-to-int v1, v11

    aput v1, v8, v13

    const/16 v16, 0x0

    goto :goto_b

    :cond_e
    move/from16 v32, v1

    move/from16 v33, v11

    move/from16 v34, v12

    const/16 v16, 0x0

    .line 30
    aput v16, v8, v13

    :goto_b
    const-wide/32 v23, 0xf4240

    move-wide/from16 v21, v29

    move-wide/from16 v25, v2

    .line 31
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/z0;->f1(JJJ)J

    move-result-wide v11

    sub-long v11, v11, v27

    aput-wide v11, v15, v13

    .line 32
    iget-boolean v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->s:Z

    if-nez v1, :cond_f

    .line 33
    aget-wide v11, v15, v13

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->d:Lcom/google/android/exoplayer2/extractor/mp4/r;

    iget-wide v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/r;->h:J

    add-long/2addr v11, v0

    aput-wide v11, v15, v13

    .line 34
    :cond_f
    aput v10, v7, v13

    shr-int/lit8 v0, v6, 0x10

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_11

    if-eqz p2, :cond_10

    if-nez v13, :cond_11

    :cond_10
    const/4 v0, 0x1

    goto :goto_c

    :cond_11
    const/4 v0, 0x0

    .line 35
    :goto_c
    aput-boolean v0, v18, v13

    int-to-long v10, v14

    move-wide/from16 v20, v2

    move-wide/from16 v1, v29

    add-long v29, v1, v10

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v19

    move-wide/from16 v2, v20

    move/from16 v6, v31

    move/from16 v1, v32

    move/from16 v11, v33

    move/from16 v12, v34

    goto/16 :goto_7

    :cond_12
    move-wide/from16 v1, v29

    .line 36
    iput-wide v1, v4, Lcom/google/android/exoplayer2/extractor/mp4/q;->r:J

    return v9
.end method

.method private static G(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Lcom/google/android/exoplayer2/extractor/mp4/g$c;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->x1:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const v5, 0x7472756e

    if-ge v2, v0, :cond_1

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 4
    iget v7, v6, Lcom/google/android/exoplayer2/extractor/mp4/a;->a:I

    if-ne v7, v5, :cond_0

    .line 5
    iget-object v5, v6, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    const/16 v6, 0xc

    .line 6
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 7
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/h0;->K()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->h:I

    .line 9
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->g:I

    .line 10
    iput v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->f:I

    .line 11
    iget-object v2, p1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->b:Lcom/google/android/exoplayer2/extractor/mp4/q;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/q;->e(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 12
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 13
    iget v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/a;->a:I

    if-ne v6, v5, :cond_2

    add-int/lit8 v6, v2, 0x1

    .line 14
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    .line 15
    invoke-static {p1, v2, p2, v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/g;->F(Lcom/google/android/exoplayer2/extractor/mp4/g$c;IILcom/google/android/exoplayer2/util/h0;I)I

    move-result v2

    move v3, v2

    move v2, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static H(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/extractor/mp4/q;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 2
    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/exoplayer2/util/h0;->k([BII)V

    .line 3
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->S:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->y(Lcom/google/android/exoplayer2/util/h0;ILcom/google/android/exoplayer2/extractor/mp4/q;)V

    return-void
.end method

.method private I(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->w1:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->n(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->g()V

    return-void
.end method

.method private J(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/l;->i([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 3
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    .line 7
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v1}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 9
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->L()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->w1:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    .line 15
    :cond_4
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_f

    .line 16
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 17
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    const v6, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v0, v7, :cond_5

    if-ne v0, v6, :cond_6

    .line 18
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->K:Z

    if-nez v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/extractor/m;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/b0$b;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->A:J

    invoke-direct {v8, v9, v10, v4, v5}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(JJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 20
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->K:Z

    .line 21
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    if-ne v0, v7, :cond_7

    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_7

    .line 23
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    iget-object v8, v8, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->b:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 24
    iput-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/q;->b:J

    .line 25
    iput-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/q;->d:J

    .line 26
    iput-wide v4, v8, Lcom/google/android/exoplayer2/extractor/mp4/q;->c:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 27
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_8

    .line 28
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    .line 29
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->x:J

    const/4 p1, 0x2

    .line 30
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    return v3

    .line 31
    :cond_8
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->N(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 32
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 33
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    invoke-direct {v2, v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 34
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_9

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->I(J)V

    goto :goto_2

    .line 36
    :cond_9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->g()V

    goto :goto_2

    .line 37
    :cond_a
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->O(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_d

    .line 38
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    if-ne p1, v1, :cond_c

    .line 39
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_b

    .line 40
    new-instance p1, Lcom/google/android/exoplayer2/util/h0;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v4

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->w:Lcom/google/android/exoplayer2/util/h0;

    .line 43
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    goto :goto_2

    .line 44
    :cond_b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_c
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_d
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_e

    .line 47
    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->w:Lcom/google/android/exoplayer2/util/h0;

    .line 48
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    :goto_2
    return v3

    .line 49
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_f
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private K(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->u:J

    long-to-int v1, v0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    sub-int/2addr v1, v0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->w:Lcom/google/android/exoplayer2/util/h0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->t:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/mp4/a$b;-><init>(ILcom/google/android/exoplayer2/util/h0;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/g;->p(Lcom/google/android/exoplayer2/extractor/mp4/a$b;J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 6
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->I(J)V

    return-void
.end method

.method private L(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 2
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->b:Lcom/google/android/exoplayer2/extractor/mp4/q;

    .line 3
    iget-boolean v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/q;->q:Z

    if-eqz v6, :cond_0

    iget-wide v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/q;->d:J

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    move-wide v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 p1, 0x3

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    return-void

    .line 6
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-ltz v0, :cond_3

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 8
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->b:Lcom/google/android/exoplayer2/extractor/mp4/q;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/q;->a(Lcom/google/android/exoplayer2/extractor/l;)V

    return-void

    .line 9
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private M(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g;->j(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3
    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->x:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-ltz v2, :cond_0

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->g()V

    return v3

    .line 6
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->d()J

    move-result-wide v4

    .line 8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v5, v4

    if-gez v5, :cond_2

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Ignoring negative offset to sample data."

    .line 9
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 10
    :cond_2
    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 11
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    .line 12
    :cond_3
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v4, v6, :cond_8

    .line 13
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->f()I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    .line 14
    iget v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->f:I

    iget v10, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->i:I

    if-ge v9, v10, :cond_5

    .line 15
    invoke-interface {v1, v4}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 16
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->m()V

    .line 17
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->h()Z

    move-result v1

    if-nez v1, :cond_4

    .line 18
    iput-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    .line 19
    :cond_4
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    return v8

    .line 20
    :cond_5
    iget-object v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->d:Lcom/google/android/exoplayer2/extractor/mp4/r;

    iget-object v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/r;->a:Lcom/google/android/exoplayer2/extractor/mp4/o;

    iget v9, v9, Lcom/google/android/exoplayer2/extractor/mp4/o;->g:I

    if-ne v9, v8, :cond_6

    const/16 v9, 0x8

    sub-int/2addr v4, v9

    .line 21
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    .line 22
    invoke-interface {v1, v9}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 23
    :cond_6
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->d:Lcom/google/android/exoplayer2/extractor/mp4/r;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/r;->a:Lcom/google/android/exoplayer2/extractor/mp4/o;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/o;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 24
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    const/4 v9, 0x7

    .line 25
    invoke-virtual {v2, v4, v9}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->i(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    .line 26
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->l:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {v4, v10}, Lcom/google/android/exoplayer2/audio/c;->a(ILcom/google/android/exoplayer2/util/h0;)V

    .line 27
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->a:Lcom/google/android/exoplayer2/extractor/e0;

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->l:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {v4, v10, v9}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 28
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    goto :goto_0

    .line 29
    :cond_7
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    .line 30
    invoke-virtual {v2, v4, v3}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->i(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    .line 31
    :goto_0
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    iget v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    add-int/2addr v4, v9

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    .line 32
    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    .line 33
    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    .line 34
    :cond_8
    iget-object v4, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->d:Lcom/google/android/exoplayer2/extractor/mp4/r;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/r;->a:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 35
    iget-object v9, v2, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->a:Lcom/google/android/exoplayer2/extractor/e0;

    .line 36
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->e()J

    move-result-wide v10

    .line 37
    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->m:Lcom/google/android/exoplayer2/util/u0;

    if-eqz v12, :cond_9

    .line 38
    invoke-virtual {v12, v10, v11}, Lcom/google/android/exoplayer2/util/u0;->a(J)J

    move-result-wide v10

    :cond_9
    move-wide v14, v10

    .line 39
    iget v10, v4, Lcom/google/android/exoplayer2/extractor/mp4/o;->j:I

    if-eqz v10, :cond_e

    .line 40
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->i:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v10

    .line 41
    aput-byte v3, v10, v3

    .line 42
    aput-byte v3, v10, v8

    const/4 v11, 0x2

    .line 43
    aput-byte v3, v10, v11

    .line 44
    iget v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/o;->j:I

    add-int/lit8 v12, v11, 0x1

    rsub-int/lit8 v11, v11, 0x4

    .line 45
    :goto_1
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    if-ge v13, v6, :cond_f

    .line 46
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    if-nez v6, :cond_c

    .line 47
    invoke-interface {v1, v10, v11, v12}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 48
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->i:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 49
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->i:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v6

    if-lt v6, v8, :cond_b

    add-int/lit8 v6, v6, -0x1

    .line 50
    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    .line 51
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->h:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 52
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->h:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {v9, v6, v7}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 53
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->i:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {v9, v6, v8}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 54
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/extractor/e0;

    array-length v6, v6

    if-lez v6, :cond_a

    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/o;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v13, v10, v7

    .line 55
    invoke-static {v6, v13}, Lcom/google/android/exoplayer2/util/b0;->g(Ljava/lang/String;B)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->G:Z

    .line 56
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    .line 57
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    add-int/2addr v6, v11

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    const/4 v6, 0x3

    goto :goto_1

    .line 58
    :cond_b
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_c
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->G:Z

    if-eqz v13, :cond_d

    .line 60
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v13, v6}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 61
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v6

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    invoke-interface {v1, v6, v3, v13}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 62
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/h0;

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    invoke-interface {v9, v6, v13}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 63
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    .line 64
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/h0;

    .line 65
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v13

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v7

    invoke-static {v13, v7}, Lcom/google/android/exoplayer2/util/b0;->k([BI)I

    move-result v7

    .line 66
    iget-object v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/h0;

    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/o;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "video/hevc"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v13, v5}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 67
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/h0;->R(I)V

    .line 68
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->j:Lcom/google/android/exoplayer2/util/h0;

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v14, v15, v5, v7}, Lcom/google/android/exoplayer2/extractor/d;->a(JLcom/google/android/exoplayer2/util/h0;[Lcom/google/android/exoplayer2/extractor/e0;)V

    goto :goto_3

    .line 69
    :cond_d
    invoke-interface {v9, v1, v6, v3}, Lcom/google/android/exoplayer2/extractor/e0;->b(Lcom/google/android/exoplayer2/upstream/i;IZ)I

    move-result v6

    .line 70
    :goto_3
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    .line 71
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    sub-int/2addr v5, v6

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->F:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 72
    :cond_e
    :goto_4
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    if-ge v4, v5, :cond_f

    sub-int/2addr v5, v4

    .line 73
    invoke-interface {v9, v1, v5, v3}, Lcom/google/android/exoplayer2/extractor/e0;->b(Lcom/google/android/exoplayer2/upstream/i;IZ)I

    move-result v4

    .line 74
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->E:I

    goto :goto_4

    .line 75
    :cond_f
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->c()I

    move-result v12

    .line 76
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->g()Lcom/google/android/exoplayer2/extractor/mp4/p;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 77
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/p;->c:Lcom/google/android/exoplayer2/extractor/e0$a;

    goto :goto_5

    :cond_10
    const/4 v1, 0x0

    .line 78
    :goto_5
    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->D:I

    const/4 v3, 0x0

    move-wide v10, v14

    move-wide v4, v14

    move v14, v3

    move-object v15, v1

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 79
    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/g;->s(J)V

    .line 80
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->h()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    .line 81
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->C:Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    :cond_11
    const/4 v1, 0x3

    .line 82
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    const/4 v1, 0x1

    return v1
.end method

.method private static N(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_1

    const v0, 0x74726166

    if-eq p0, v0, :cond_1

    const v0, 0x6d766578

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static O(I)Z
    .locals 1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x73696478

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x74666474

    if-eq p0, v0, :cond_1

    const v0, 0x74666864

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x74726578

    if-eq p0, v0, :cond_1

    const v0, 0x7472756e

    if-eq p0, v0, :cond_1

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_1

    const v0, 0x7361697a

    if-eq p0, v0, :cond_1

    const v0, 0x7361696f

    if-eq p0, v0, :cond_1

    const v0, 0x73656e63

    if-eq p0, v0, :cond_1

    const v0, 0x75756964

    if-eq p0, v0, :cond_1

    const v0, 0x73626770

    if-eq p0, v0, :cond_1

    const v0, 0x73677064

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x6d656864

    if-eq p0, v0, :cond_1

    const v0, 0x656d7367

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic e()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/g;->l()[Lcom/google/android/exoplayer2/extractor/k;

    move-result-object v0

    return-object v0
.end method

.method private static f(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const/16 v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->v:I

    return-void
.end method

.method private h(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/c;",
            ">;I)",
            "Lcom/google/android/exoplayer2/extractor/mp4/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/c;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/c;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/c;

    return-object p1
.end method

.method private static i(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/a$b;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 3
    iget v5, v4, Lcom/google/android/exoplayer2/extractor/mp4/a;->a:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v4

    .line 6
    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/l;->f([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    new-instance v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private static j(Landroid/util/SparseArray;)Lcom/google/android/exoplayer2/extractor/mp4/g$c;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$c;",
            ">;)",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 2
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    .line 3
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->a(Lcom/google/android/exoplayer2/extractor/mp4/g$c;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->f:I

    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->d:Lcom/google/android/exoplayer2/extractor/mp4/r;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/r;->b:I

    if-eq v6, v7, :cond_2

    .line 4
    :cond_0
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->a(Lcom/google/android/exoplayer2/extractor/mp4/g$c;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->h:I

    iget-object v7, v5, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->b:Lcom/google/android/exoplayer2/extractor/mp4/q;

    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/q;->e:I

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->d()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    move-object v1, v5

    move-wide v2, v6

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private k()V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/e0;

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/extractor/e0;

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->r:Lcom/google/android/exoplayer2/extractor/e0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->d:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 4
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/extractor/m;

    const/16 v6, 0x65

    const/4 v7, 0x5

    .line 5
    invoke-interface {v5, v4, v7}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    const/16 v4, 0x65

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/z0;->T0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/extractor/e0;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/extractor/e0;

    .line 7
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 8
    sget-object v6, Lcom/google/android/exoplayer2/extractor/mp4/g;->T:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/e0;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/extractor/e0;

    .line 10
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/extractor/e0;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/extractor/m;

    add-int/lit8 v1, v4, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v4, v3}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object v0

    .line 12
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 13
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->J:[Lcom/google/android/exoplayer2/extractor/e0;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static synthetic l()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/k;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/g;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp4/g;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private n(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/a;->a:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->r(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)V

    goto :goto_0

    :cond_0
    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->q(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->d(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private o(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/extractor/e0;

    array-length v2, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x8

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v2

    .line 4
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/16 v1, 0x2e

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Skipping unsupported emsg version: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentedMp4Extractor"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v11

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->L()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/z0;->f1(JJJ)J

    move-result-wide v13

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/z0;->f1(JJJ)J

    move-result-wide v5

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v7

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->A()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->A()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v19, v2

    move-wide/from16 v21, v5

    move-wide/from16 v23, v7

    move-object/from16 v20, v9

    move-wide v7, v3

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->A()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->A()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v5

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/z0;->f1(JJJ)J

    move-result-wide v7

    .line 16
    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->B:J

    cmp-long v12, v10, v3

    if-eqz v12, :cond_3

    add-long/2addr v10, v7

    move-wide/from16 v16, v10

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v3

    .line 17
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    move-wide v14, v5

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/z0;->f1(JJJ)J

    move-result-wide v5

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v10

    move-object/from16 v19, v2

    move-wide/from16 v21, v5

    move-object/from16 v20, v9

    move-wide/from16 v23, v10

    move-wide/from16 v13, v16

    .line 19
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v2

    new-array v2, v2, [B

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Lcom/google/android/exoplayer2/util/h0;->k([BII)V

    .line 21
    new-instance v1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object/from16 v18, v1

    move-object/from16 v25, v2

    invoke-direct/range {v18 .. v25}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 22
    new-instance v2, Lcom/google/android/exoplayer2/util/h0;

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->n:Lcom/google/android/exoplayer2/metadata/emsg/b;

    .line 23
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/metadata/emsg/b;->a(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/util/h0;-><init>([B)V

    .line 24
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v1

    .line 25
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/extractor/e0;

    array-length v9, v5

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v11, v5, v10

    .line 26
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 27
    invoke-interface {v11, v2, v1}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    cmp-long v2, v13, v3

    if-nez v2, :cond_5

    .line 28
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->q:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    invoke-direct {v3, v7, v8, v1}, Lcom/google/android/exoplayer2/extractor/mp4/g$b;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 29
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    goto :goto_4

    .line 30
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->m:Lcom/google/android/exoplayer2/util/u0;

    if-eqz v2, :cond_6

    .line 31
    invoke-virtual {v2, v13, v14}, Lcom/google/android/exoplayer2/util/u0;->a(J)J

    move-result-wide v13

    .line 32
    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/extractor/e0;

    array-length v3, v2

    :goto_3
    if-ge v6, v3, :cond_7

    aget-object v15, v2, v6

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v16, v13

    move/from16 v19, v1

    .line 33
    invoke-interface/range {v15 .. v21}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private p(Lcom/google/android/exoplayer2/extractor/mp4/a$b;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->e(Lcom/google/android/exoplayer2/extractor/mp4/a$b;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/a;->a:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/mp4/g;->A(Lcom/google/android/exoplayer2/util/h0;J)Landroid/util/Pair;

    move-result-object p1

    .line 5
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->B:J

    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/extractor/m;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/extractor/b0;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->K:Z

    goto :goto_0

    :cond_1
    const p2, 0x656d7367

    if-ne v0, p2, :cond_2

    .line 8
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->o(Lcom/google/android/exoplayer2/util/h0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private q(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->e:Lcom/google/android/exoplayer2/extractor/mp4/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->d:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->k:[B

    invoke-static {p1, v0, v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/mp4/g;->u(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Landroid/util/SparseArray;ZI[B)V

    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->x1:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->i(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->n(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->z:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->z:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->l(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8
    :cond_2
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->z:J

    :cond_3
    return-void
.end method

.method private r(Lcom/google/android/exoplayer2/extractor/mp4/a$a;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->e:Lcom/google/android/exoplayer2/extractor/mp4/o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/a;->j(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->x1:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->i(Ljava/util/List;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v7

    const v0, 0x6d766578

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->g(I)Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 4
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->x1:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move-wide v8, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    .line 6
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->x1:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 7
    iget v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/a;->a:I

    const v10, 0x74726578

    if-ne v6, v10, :cond_1

    .line 8
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/g;->E(Lcom/google/android/exoplayer2/util/h0;)Landroid/util/Pair;

    move-result-object v4

    .line 9
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/c;

    invoke-virtual {v11, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const v10, 0x6d656864

    if-ne v6, v10, :cond_2

    .line 10
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/g;->t(Lcom/google/android/exoplayer2/util/h0;)J

    move-result-wide v8

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_3
    new-instance v4, Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/w;-><init>()V

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    const/4 v10, 0x0

    new-instance v12, Lcom/google/android/exoplayer2/extractor/mp4/f;

    invoke-direct {v12, p0}, Lcom/google/android/exoplayer2/extractor/mp4/f;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/g;)V

    move-object v3, p1

    move-wide v5, v8

    move v8, v0

    move v9, v10

    move-object v10, v12

    .line 12
    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/b;->z(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Lcom/google/android/exoplayer2/extractor/w;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/q;)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 14
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_6

    :goto_4
    if-ge v2, v0, :cond_5

    .line 15
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 16
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/r;->a:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 17
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/extractor/m;

    iget v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->b:I

    .line 18
    invoke-interface {v5, v2, v6}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object v5

    iget v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->a:I

    .line 19
    invoke-direct {p0, v11, v6}, Lcom/google/android/exoplayer2/extractor/mp4/g;->h(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/c;

    move-result-object v6

    invoke-direct {v4, v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;-><init>(Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/extractor/mp4/r;Lcom/google/android/exoplayer2/extractor/mp4/c;)V

    .line 20
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->a:I

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->A:J

    iget-wide v6, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->e:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->A:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->t()V

    goto :goto_7

    .line 23
    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    :goto_6
    if-ge v2, v0, :cond_8

    .line 24
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/r;

    .line 25
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/mp4/r;->a:Lcom/google/android/exoplayer2/extractor/mp4/o;

    .line 26
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    iget v5, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->a:I

    .line 27
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/o;->a:I

    .line 28
    invoke-direct {p0, v11, v3}, Lcom/google/android/exoplayer2/extractor/mp4/g;->h(Landroid/util/SparseArray;I)Lcom/google/android/exoplayer2/extractor/mp4/c;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->j(Lcom/google/android/exoplayer2/extractor/mp4/r;Lcom/google/android/exoplayer2/extractor/mp4/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    return-void
.end method

.method private s(J)V
    .locals 13

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    .line 4
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->a:J

    add-long/2addr v1, p1

    .line 5
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->m:Lcom/google/android/exoplayer2/util/u0;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, v1, v2}, Lcom/google/android/exoplayer2/util/u0;->a(J)J

    move-result-wide v1

    .line 7
    :cond_1
    iget-object v10, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->I:[Lcom/google/android/exoplayer2/extractor/e0;

    array-length v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    const/4 v6, 0x1

    .line 8
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/g$b;->b:I

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    const/4 v9, 0x0

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static t(Lcom/google/android/exoplayer2/util/h0;)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->L()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static u(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Landroid/util/SparseArray;ZI[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/a$a;",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/mp4/g$c;",
            ">;ZI[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->y1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->y1:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/a$a;

    .line 3
    iget v3, v2, Lcom/google/android/exoplayer2/extractor/mp4/a;->a:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    .line 4
    invoke-static {v2, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/g;->D(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Landroid/util/SparseArray;ZI[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static v(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/extractor/mp4/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/a;->b(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->K()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    move-result v0

    .line 7
    iget-wide v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/q;->d:J

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->L()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/google/android/exoplayer2/extractor/mp4/q;->d:J

    return-void

    .line 9
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const/16 p1, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static w(Lcom/google/android/exoplayer2/extractor/mp4/p;Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/extractor/mp4/q;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/p;->d:I

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/a;->b(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->K()I

    move-result v1

    .line 8
    iget v3, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->f:I

    if-gt v1, v3, :cond_6

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->n:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 11
    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    .line 12
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->n:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 13
    :cond_4
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->n:[Z

    iget p1, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->f:I

    invoke-static {p0, v1, p1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v5, :cond_5

    .line 14
    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/extractor/mp4/q;->d(I)V

    :cond_5
    return-void

    .line 15
    :cond_6
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    iget p1, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->f:I

    const/16 p2, 0x4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Saiz sample count "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is greater than fragment sample count"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static x(Lcom/google/android/exoplayer2/extractor/mp4/a$a;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/q;)V
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    const/4 v4, 0x0

    .line 1
    :goto_0
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->x1:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 2
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/a$a;->x1:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/a$b;

    .line 3
    iget-object v8, v7, Lcom/google/android/exoplayer2/extractor/mp4/a$b;->w1:Lcom/google/android/exoplayer2/util/h0;

    .line 4
    iget v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/a;->a:I

    const v9, 0x73626770

    const v10, 0x73656967

    const/16 v11, 0xc

    if-ne v7, v9, :cond_0

    .line 5
    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 6
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v7

    if-ne v7, v10, :cond_1

    move-object v5, v8

    goto :goto_1

    :cond_0
    const v9, 0x73677064

    if-ne v7, v9, :cond_1

    .line 7
    invoke-virtual {v8, v11}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 8
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v7

    if-ne v7, v10, :cond_1

    move-object v6, v8

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_d

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const/16 v0, 0x8

    .line 9
    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 10
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    move-result v4

    const/4 v7, 0x4

    .line 11
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4

    .line 12
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 13
    :cond_4
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v4

    if-ne v4, v8, :cond_c

    .line 14
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 15
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/a;->c(I)I

    move-result v0

    .line 16
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    if-ne v0, v8, :cond_6

    .line 17
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v4, 0x2

    if-lt v0, v4, :cond_7

    .line 19
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 20
    :cond_7
    :goto_2
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v4

    const-wide/16 v9, 0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_b

    .line 21
    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 22
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v0

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v14, v4, 0x4

    and-int/lit8 v15, v0, 0xf

    .line 23
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v0

    if-ne v0, v8, :cond_8

    const/4 v10, 0x1

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_3
    if-nez v10, :cond_9

    return-void

    .line 24
    :cond_9
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v12

    const/16 v0, 0x10

    new-array v13, v0, [B

    .line 25
    invoke-virtual {v6, v13, v3, v0}, Lcom/google/android/exoplayer2/util/h0;->k([BII)V

    if-nez v12, :cond_a

    .line 26
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v0

    .line 27
    new-array v2, v0, [B

    .line 28
    invoke-virtual {v6, v2, v3, v0}, Lcom/google/android/exoplayer2/util/h0;->k([BII)V

    :cond_a
    move-object/from16 v16, v2

    .line 29
    iput-boolean v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/q;->m:Z

    .line 30
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/p;

    move-object v9, v0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v16}, Lcom/google/android/exoplayer2/extractor/mp4/p;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/q;->o:Lcom/google/android/exoplayer2/extractor/mp4/p;

    return-void

    .line 31
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_c
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_4
    return-void
.end method

.method private static y(Lcom/google/android/exoplayer2/util/h0;ILcom/google/android/exoplayer2/extractor/mp4/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/a;->b(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->K()I

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object p0, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->n:[Z

    iget p1, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->f:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 6
    :cond_1
    iget v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->f:I

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v2, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->n:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/extractor/mp4/q;->d(I)V

    .line 9
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/extractor/mp4/q;->b(Lcom/google/android/exoplayer2/util/h0;)V

    return-void

    .line 10
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    iget p1, p2, Lcom/google/android/exoplayer2/extractor/mp4/q;->f:I

    const/16 p2, 0x50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Senc sample count "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is different from fragment sample count"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static z(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/extractor/mp4/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->y(Lcom/google/android/exoplayer2/util/h0;ILcom/google/android/exoplayer2/extractor/mp4/q;)V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;->k()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->q:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->y:I

    .line 5
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->z:J

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->g()V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/n;->b(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->s:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->M(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->L(Lcom/google/android/exoplayer2/extractor/l;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->K(Lcom/google/android/exoplayer2/extractor/l;)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/g;->J(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/extractor/m;

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->g()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp4/g;->k()V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->e:Lcom/google/android/exoplayer2/extractor/mp4/o;

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/g$c;

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/o;->b:I

    const/4 v2, 0x0

    .line 6
    invoke-interface {p1, v2, v0}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object p1

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/r;

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->e:Lcom/google/android/exoplayer2/extractor/mp4/o;

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/r;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/o;[J[II[J[IJ)V

    new-instance v3, Lcom/google/android/exoplayer2/extractor/mp4/c;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/google/android/exoplayer2/extractor/mp4/c;-><init>(IIII)V

    invoke-direct {v1, p1, v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/g$c;-><init>(Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/extractor/mp4/r;Lcom/google/android/exoplayer2/extractor/mp4/c;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->g:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/g;->H:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->t()V

    :cond_0
    return-void
.end method

.method protected m(Lcom/google/android/exoplayer2/extractor/mp4/o;)Lcom/google/android/exoplayer2/extractor/mp4/o;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/extractor/mp4/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
