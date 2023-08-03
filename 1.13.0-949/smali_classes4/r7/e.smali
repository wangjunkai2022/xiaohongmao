.class public interface abstract annotation Lr7/e;
.super Ljava/lang/Object;
.source "MatchesPattern.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lr7/e;
        flags = 0x0
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/e$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lt7/c;
    applicableTo = Ljava/lang/String;
.end annotation


# virtual methods
.method public abstract flags()I
.end method

.method public abstract value()Ljava/lang/String;
    .annotation runtime Lr7/m;
    .end annotation
.end method
