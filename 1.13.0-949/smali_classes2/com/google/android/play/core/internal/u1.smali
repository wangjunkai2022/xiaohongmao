.class final Lcom/google/android/play/core/internal/u1;
.super Lcom/google/android/play/core/internal/v1;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final b:[B


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/play/core/internal/v1;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object p2, p0, Lcom/google/android/play/core/internal/u1;->b:[B

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/internal/u1;->b:[B

    return-object v0
.end method
