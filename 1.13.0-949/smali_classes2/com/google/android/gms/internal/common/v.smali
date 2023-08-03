.class abstract Lcom/google/android/gms/internal/common/v;
.super Lcom/google/android/gms/internal/common/t;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/t;-><init>()V

    const-string p1, "CharMatcher.none()"

    iput-object p1, p0, Lcom/google/android/gms/internal/common/v;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/common/v;->a:Ljava/lang/String;

    return-object v0
.end method
