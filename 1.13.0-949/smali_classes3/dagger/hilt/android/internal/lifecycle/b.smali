.class public final Ldagger/hilt/android/internal/lifecycle/b;
.super Ljava/lang/Object;
.source "DefaultViewModelFactories_InternalFactoryFactory_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
    value = {
        "dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"
    }
.end annotation

.annotation build Ldagger/internal/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Ldagger/hilt/android/internal/lifecycle/a$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySetProvider",
            "viewModelComponentBuilderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Lu7/c<",
            "Lh6/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldagger/hilt/android/internal/lifecycle/b;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Ldagger/hilt/android/internal/lifecycle/b;->b:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;)Ldagger/hilt/android/internal/lifecycle/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySetProvider",
            "viewModelComponentBuilderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Lu7/c<",
            "Lh6/f;",
            ">;)",
            "Ldagger/hilt/android/internal/lifecycle/b;"
        }
    .end annotation

    new-instance v0, Ldagger/hilt/android/internal/lifecycle/b;

    invoke-direct {v0, p0, p1}, Ldagger/hilt/android/internal/lifecycle/b;-><init>(Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Ljava/util/Set;Lh6/f;)Ldagger/hilt/android/internal/lifecycle/a$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySet",
            "viewModelComponentBuilder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lh6/f;",
            ")",
            "Ldagger/hilt/android/internal/lifecycle/a$d;"
        }
    .end annotation

    new-instance v0, Ldagger/hilt/android/internal/lifecycle/a$d;

    invoke-direct {v0, p0, p1}, Ldagger/hilt/android/internal/lifecycle/a$d;-><init>(Ljava/util/Set;Lh6/f;)V

    return-object v0
.end method


# virtual methods
.method public b()Ldagger/hilt/android/internal/lifecycle/a$d;
    .locals 2

    iget-object v0, p0, Ldagger/hilt/android/internal/lifecycle/b;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Ldagger/hilt/android/internal/lifecycle/b;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh6/f;

    invoke-static {v0, v1}, Ldagger/hilt/android/internal/lifecycle/b;->c(Ljava/util/Set;Lh6/f;)Ldagger/hilt/android/internal/lifecycle/a$d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldagger/hilt/android/internal/lifecycle/b;->b()Ldagger/hilt/android/internal/lifecycle/a$d;

    move-result-object v0

    return-object v0
.end method
