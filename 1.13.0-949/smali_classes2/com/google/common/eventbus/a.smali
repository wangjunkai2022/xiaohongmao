.class public interface abstract annotation Lcom/google/common/eventbus/a;
.super Ljava/lang/Object;
.source "AllowConcurrentEvents.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Lh3/a;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation
