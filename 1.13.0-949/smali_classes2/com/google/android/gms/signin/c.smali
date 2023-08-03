.class final Lcom/google/android/gms/signin/c;
.super Lcom/google/android/gms/common/api/a$a;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$a<",
        "Lcom/google/android/gms/signin/internal/a;",
        "Lcom/google/android/gms/signin/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/f;Ljava/lang/Object;Lcom/google/android/gms/common/api/i$b;Lcom/google/android/gms/common/api/i$c;)Lcom/google/android/gms/common/api/a$f;
    .locals 0

    .line 1
    check-cast p4, Lcom/google/android/gms/signin/d;

    .line 2
    sget p1, Lcom/google/android/gms/signin/internal/a;->S:I

    const/4 p1, 0x0

    .line 3
    throw p1
.end method
