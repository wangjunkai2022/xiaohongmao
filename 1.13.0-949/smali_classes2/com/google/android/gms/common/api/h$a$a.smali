.class public Lcom/google/android/gms/common/api/h$a$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation build Lu2/a;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/y;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lu2/a;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/h$a;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/h$a$a;->a:Lcom/google/android/gms/common/api/internal/y;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/h$a$a;->a:Lcom/google/android/gms/common/api/internal/y;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/h$a$a;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/h$a$a;->b:Landroid/os/Looper;

    .line 3
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/h$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/h$a$a;->a:Lcom/google/android/gms/common/api/internal/y;

    iget-object v2, p0, Lcom/google/android/gms/common/api/h$a$a;->b:Landroid/os/Looper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/android/gms/common/api/h$a;-><init>(Lcom/google/android/gms/common/api/internal/y;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/z;)V

    return-object v0
.end method

.method public b(Landroid/os/Looper;)Lcom/google/android/gms/common/api/h$a$a;
    .locals 1
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "Looper must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/h$a$a;->b:Landroid/os/Looper;

    return-object p0
.end method

.method public c(Lcom/google/android/gms/common/api/internal/y;)Lcom/google/android/gms/common/api/h$a$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "StatusExceptionMapper must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/h$a$a;->a:Lcom/google/android/gms/common/api/internal/y;

    return-object p0
.end method
