.class public interface abstract annotation Li8/c;
.super Ljava/lang/Object;
.source "AfterReturning.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Li8/c;
        argNames = ""
        pointcut = ""
        returning = ""
        value = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract argNames()Ljava/lang/String;
.end method

.method public abstract pointcut()Ljava/lang/String;
.end method

.method public abstract returning()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/String;
.end method
