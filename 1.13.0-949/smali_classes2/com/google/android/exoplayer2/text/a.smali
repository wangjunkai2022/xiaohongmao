.class public final Lcom/google/android/exoplayer2/text/a;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/a$c;,
        Lcom/google/android/exoplayer2/text/a$f;,
        Lcom/google/android/exoplayer2/text/a$e;,
        Lcom/google/android/exoplayer2/text/a$d;,
        Lcom/google/android/exoplayer2/text/a$b;
    }
.end annotation


# static fields
.field public static final A:I = 0x1

.field public static final B:I = 0x2

.field public static final C:I = 0x1

.field public static final D:I = 0x2

.field public static final r:Lcom/google/android/exoplayer2/text/a;

.field public static final s:F = -3.4028235E38f

.field public static final t:I = -0x80000000

.field public static final u:I = 0x0

.field public static final v:I = 0x1

.field public static final w:I = 0x2

.field public static final x:I = 0x0

.field public static final y:I = 0x1

.field public static final z:I


# instance fields
.field public final a:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:F

.field public final i:I

.field public final j:F

.field public final k:F

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:F

.field public final p:I

.field public final q:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/text/a$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/a$c;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/a$c;->A(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/a$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/a$c;->a()Lcom/google/android/exoplayer2/text/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/a;->r:Lcom/google/android/exoplayer2/text/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const v3, -0x800001

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const v6, -0x800001

    const/high16 v7, -0x80000000

    const v8, -0x800001

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 11
    .param p2    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    const/high16 v10, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 3
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFIF)V
    .locals 18
    .param p2    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v12, p8

    move/from16 v10, p9

    move/from16 v11, p10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v13, -0x800001

    const/4 v14, 0x0

    const/high16 v15, -0x1000000

    const/high16 v16, -0x80000000

    const/16 v17, 0x0

    .line 4
    invoke-direct/range {v0 .. v17}, Lcom/google/android/exoplayer2/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V
    .locals 18
    .param p2    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v12, p8

    move/from16 v14, p9

    move/from16 v15, p10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v10, -0x80000000

    const v11, -0x800001

    const v13, -0x800001

    const/high16 v16, -0x80000000

    const/16 v17, 0x0

    .line 5
    invoke-direct/range {v0 .. v17}, Lcom/google/android/exoplayer2/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/text/Layout$Alignment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez v1, :cond_0

    .line 7
    invoke-static {p4}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 8
    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 9
    :goto_1
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    .line 10
    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/text/a;->a:Ljava/lang/CharSequence;

    :goto_2
    move-object v1, p2

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/text/a;->a:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 12
    iput-object v1, v0, Lcom/google/android/exoplayer2/text/a;->a:Ljava/lang/CharSequence;

    goto :goto_2

    .line 13
    :goto_3
    iput-object v1, v0, Lcom/google/android/exoplayer2/text/a;->b:Landroid/text/Layout$Alignment;

    move-object v1, p3

    .line 14
    iput-object v1, v0, Lcom/google/android/exoplayer2/text/a;->c:Landroid/text/Layout$Alignment;

    .line 15
    iput-object v2, v0, Lcom/google/android/exoplayer2/text/a;->d:Landroid/graphics/Bitmap;

    move v1, p5

    .line 16
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->e:F

    move v1, p6

    .line 17
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->f:I

    move v1, p7

    .line 18
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->g:I

    move v1, p8

    .line 19
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->h:F

    move v1, p9

    .line 20
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->i:I

    move/from16 v1, p12

    .line 21
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->j:F

    move/from16 v1, p13

    .line 22
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->k:F

    move/from16 v1, p14

    .line 23
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/text/a;->l:Z

    move/from16 v1, p15

    .line 24
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->m:I

    move v1, p10

    .line 25
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->n:I

    move v1, p11

    .line 26
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->o:F

    move/from16 v1, p16

    .line 27
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->p:I

    move/from16 v1, p17

    .line 28
    iput v1, v0, Lcom/google/android/exoplayer2/text/a;->q:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplayer2/text/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p17}, Lcom/google/android/exoplayer2/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/text/a$c;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/text/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/text/a$c;-><init>(Lcom/google/android/exoplayer2/text/a;Lcom/google/android/exoplayer2/text/a$a;)V

    return-object v0
.end method
