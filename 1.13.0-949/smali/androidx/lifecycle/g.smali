.class public final synthetic Landroidx/lifecycle/g;
.super Ljava/lang/Object;
.source "LifecycleRegistryOwner.java"


# direct methods
.method public static bridge synthetic a(Landroidx/lifecycle/LifecycleRegistryOwner;)Landroidx/lifecycle/Lifecycle;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleRegistryOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    return-object p0
.end method
