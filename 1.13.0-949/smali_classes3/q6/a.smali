.class public interface abstract annotation Lq6/a;
.super Ljava/lang/Object;
.source "ComponentEntryPoint.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Ldagger/hilt/d;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation
