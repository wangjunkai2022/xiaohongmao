.class public Lcom/google/android/play/core/appupdate/a;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:I

.field private final c:I
    .annotation build Ld3/e;
    .end annotation
.end field

.field private final d:I
    .annotation build Ld3/d;
    .end annotation
.end field

.field private final e:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:I

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:J

.field private final k:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final n:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Ld3/e;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Ld3/d;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p18    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/play/core/appupdate/a;->o:Z

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/play/core/appupdate/a;->a:Ljava/lang/String;

    move v1, p2

    iput v1, v0, Lcom/google/android/play/core/appupdate/a;->b:I

    move v1, p3

    iput v1, v0, Lcom/google/android/play/core/appupdate/a;->c:I

    move v1, p4

    iput v1, v0, Lcom/google/android/play/core/appupdate/a;->d:I

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/play/core/appupdate/a;->e:Ljava/lang/Integer;

    move v1, p6

    iput v1, v0, Lcom/google/android/play/core/appupdate/a;->f:I

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/play/core/appupdate/a;->g:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/play/core/appupdate/a;->h:J

    move-wide v1, p11

    iput-wide v1, v0, Lcom/google/android/play/core/appupdate/a;->i:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/google/android/play/core/appupdate/a;->j:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/play/core/appupdate/a;->k:Landroid/app/PendingIntent;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/play/core/appupdate/a;->l:Landroid/app/PendingIntent;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/play/core/appupdate/a;->m:Landroid/app/PendingIntent;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/play/core/appupdate/a;->n:Landroid/app/PendingIntent;

    return-void
.end method

.method public static l(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/google/android/play/core/appupdate/a;
    .locals 20
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Ld3/e;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Ld3/d;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    new-instance v19, Lcom/google/android/play/core/appupdate/a;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/google/android/play/core/appupdate/a;-><init>(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v19
.end method

.method private final o(Lcom/google/android/play/core/appupdate/d;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/d;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/google/android/play/core/appupdate/a;->i:J

    iget-wide v2, p0, Lcom/google/android/play/core/appupdate/a;->j:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/appupdate/a;->b:I

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/appupdate/a;->g:J

    return-wide v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/a;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()I
    .locals 1
    .annotation build Ld3/d;
    .end annotation

    iget v0, p0, Lcom/google/android/play/core/appupdate/a;->d:I

    return v0
.end method

.method public e(I)Z
    .locals 0
    .param p1    # I
        .annotation build Ld3/b;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/d;->c(I)Lcom/google/android/play/core/appupdate/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/appupdate/a;->k(Lcom/google/android/play/core/appupdate/d;)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcom/google/android/play/core/appupdate/d;)Z
    .locals 0
    .param p1    # Lcom/google/android/play/core/appupdate/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/appupdate/a;->k(Lcom/google/android/play/core/appupdate/d;)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/play/core/appupdate/a;->h:J

    return-wide v0
.end method

.method public i()I
    .locals 1
    .annotation build Ld3/e;
    .end annotation

    iget v0, p0, Lcom/google/android/play/core/appupdate/a;->c:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/google/android/play/core/appupdate/a;->f:I

    return v0
.end method

.method final k(Lcom/google/android/play/core/appupdate/d;)Landroid/app/PendingIntent;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/d;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/a;->l:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/play/core/appupdate/a;->o(Lcom/google/android/play/core/appupdate/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/a;->n:Landroid/app/PendingIntent;

    return-object p1

    :cond_1
    return-object v1

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/d;->b()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/a;->k:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    return-object v0

    .line 4
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/play/core/appupdate/a;->o(Lcom/google/android/play/core/appupdate/d;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/a;->m:Landroid/app/PendingIntent;

    return-object p1

    :cond_4
    return-object v1
.end method

.method final m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/a;->o:Z

    return-void
.end method

.method final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/play/core/appupdate/a;->o:Z

    return v0
.end method
