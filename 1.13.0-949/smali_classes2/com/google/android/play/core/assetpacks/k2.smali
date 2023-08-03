.class final Lcom/google/android/play/core/assetpacks/k2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field final a:Ljava/lang/String;

.field final b:J

.field final c:Ljava/lang/String;

.field d:I
    .annotation build Lb3/b;
    .end annotation
.end field

.field final e:J

.field final f:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;JIJLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p4    # I
        .annotation build Lb3/b;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/k2;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/play/core/assetpacks/k2;->b:J

    iput p4, p0, Lcom/google/android/play/core/assetpacks/k2;->d:I

    iput-wide p5, p0, Lcom/google/android/play/core/assetpacks/k2;->e:J

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/k2;->f:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/k2;->c:Ljava/lang/String;

    return-void
.end method
