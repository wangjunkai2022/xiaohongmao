.class final Lcom/google/android/gms/internal/common/c0;
.super Lcom/google/android/gms/internal/common/f0;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# instance fields
.field final synthetic h:Lcom/google/android/gms/internal/common/d0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/d0;Lcom/google/android/gms/internal/common/g0;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/common/c0;->h:Lcom/google/android/gms/internal/common/d0;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/common/f0;-><init>(Lcom/google/android/gms/internal/common/g0;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method final c(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final d(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/c0;->h:Lcom/google/android/gms/internal/common/d0;

    iget-object v0, v0, Lcom/google/android/gms/internal/common/d0;->a:Lcom/google/android/gms/internal/common/x;

    iget-object v1, p0, Lcom/google/android/gms/internal/common/f0;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, "index"

    .line 2
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/common/b0;->b(IILjava/lang/String;)I

    :goto_0
    if-ge p1, v2, :cond_0

    .line 3
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/common/x;->a(C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :cond_1
    return p1
.end method
