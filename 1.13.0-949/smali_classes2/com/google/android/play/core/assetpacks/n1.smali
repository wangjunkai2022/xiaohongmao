.class final Lcom/google/android/play/core/assetpacks/n1;
.super Lcom/google/android/play/core/assetpacks/q2;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final c:I

.field final d:J

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:I

.field final h:I

.field final i:I

.field final j:J

.field final k:I
    .annotation build Lb3/b;
    .end annotation
.end field

.field final l:Ljava/io/InputStream;


# direct methods
.method constructor <init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;IIIJILjava/io/InputStream;)V
    .locals 0
    .param p13    # I
        .annotation build Lb3/b;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/q2;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/n1;->c:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/n1;->d:J

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/n1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/n1;->f:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/play/core/assetpacks/n1;->g:I

    iput p9, p0, Lcom/google/android/play/core/assetpacks/n1;->h:I

    iput p10, p0, Lcom/google/android/play/core/assetpacks/n1;->i:I

    iput-wide p11, p0, Lcom/google/android/play/core/assetpacks/n1;->j:J

    iput p13, p0, Lcom/google/android/play/core/assetpacks/n1;->k:I

    iput-object p14, p0, Lcom/google/android/play/core/assetpacks/n1;->l:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/assetpacks/n1;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/n1;->i:I

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
