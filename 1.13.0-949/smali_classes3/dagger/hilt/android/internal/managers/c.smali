.class public final Ldagger/hilt/android/internal/managers/c;
.super Ljava/lang/Object;
.source "ActivityRetainedComponentManager_Lifecycle_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
    value = "dagger.hilt.android.scopes.ActivityRetainedScoped"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/hilt/android/internal/managers/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Ldagger/hilt/android/internal/managers/b$e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ldagger/hilt/android/internal/managers/c;
    .locals 1

    invoke-static {}, Ldagger/hilt/android/internal/managers/c$a;->a()Ldagger/hilt/android/internal/managers/c;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ldagger/hilt/android/internal/managers/b$e;
    .locals 1

    new-instance v0, Ldagger/hilt/android/internal/managers/b$e;

    invoke-direct {v0}, Ldagger/hilt/android/internal/managers/b$e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Ldagger/hilt/android/internal/managers/b$e;
    .locals 1

    invoke-static {}, Ldagger/hilt/android/internal/managers/c;->c()Ldagger/hilt/android/internal/managers/b$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/c;->b()Ldagger/hilt/android/internal/managers/b$e;

    move-result-object v0

    return-object v0
.end method
