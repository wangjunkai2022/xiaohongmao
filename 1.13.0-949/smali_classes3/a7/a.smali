.class public interface abstract annotation La7/a;
.super Ljava/lang/Object;
.source "AggregatedDeps.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation La7/a;
        componentEntryPoints = {}
        entryPoints = {}
        modules = {}
        replaces = {}
        test = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract componentEntryPoints()[Ljava/lang/String;
.end method

.method public abstract components()[Ljava/lang/String;
.end method

.method public abstract entryPoints()[Ljava/lang/String;
.end method

.method public abstract modules()[Ljava/lang/String;
.end method

.method public abstract replaces()[Ljava/lang/String;
.end method

.method public abstract test()Ljava/lang/String;
.end method
