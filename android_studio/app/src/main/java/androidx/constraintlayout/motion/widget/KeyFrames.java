package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class KeyFrames {
    private static final String CUSTOM_ATTRIBUTE = "CustomAttribute";
    private static final String CUSTOM_METHOD = "CustomMethod";
    private static final String TAG = "KeyFrames";
    public static final int UNSET = -1;
    static HashMap<String, Constructor<? extends Key>> sKeyMakers;
    private HashMap<Integer, ArrayList<Key>> mFramesMap = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends Key>> hashMap = new HashMap<>();
        sKeyMakers = hashMap;
        try {
            hashMap.put("KeyAttribute", KeyAttributes.class.getConstructor(new Class[0]));
            sKeyMakers.put(TypedValues.Position.NAME, KeyPosition.class.getConstructor(new Class[0]));
            sKeyMakers.put(TypedValues.Cycle.NAME, KeyCycle.class.getConstructor(new Class[0]));
            sKeyMakers.put("KeyTimeCycle", KeyTimeCycle.class.getConstructor(new Class[0]));
            sKeyMakers.put(TypedValues.Trigger.NAME, KeyTrigger.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e4) {
            Log.e(TAG, "unable to load", e4);
        }
    }

    public KeyFrames() {
    }

    static String name(int viewId, Context context) {
        return context.getResources().getResourceEntryName(viewId);
    }

    public void addAllFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.mFramesMap.get(-1);
        if (arrayList != null) {
            motionController.addKeys(arrayList);
        }
    }

    public void addFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.mFramesMap.get(Integer.valueOf(motionController.mId));
        if (arrayList != null) {
            motionController.addKeys(arrayList);
        }
        ArrayList<Key> arrayList2 = this.mFramesMap.get(-1);
        if (arrayList2 != null) {
            Iterator<Key> it = arrayList2.iterator();
            while (it.hasNext()) {
                Key next = it.next();
                if (next.matches(((ConstraintLayout.LayoutParams) motionController.mView.getLayoutParams()).constraintTag)) {
                    motionController.addKey(next);
                }
            }
        }
    }

    public void addKey(Key key) {
        if (!this.mFramesMap.containsKey(Integer.valueOf(key.mTargetId))) {
            this.mFramesMap.put(Integer.valueOf(key.mTargetId), new ArrayList<>());
        }
        ArrayList<Key> arrayList = this.mFramesMap.get(Integer.valueOf(key.mTargetId));
        if (arrayList != null) {
            arrayList.add(key);
        }
    }

    public ArrayList<Key> getKeyFramesForView(int id) {
        return this.mFramesMap.get(Integer.valueOf(id));
    }

    public Set<Integer> getKeys() {
        return this.mFramesMap.keySet();
    }

    public KeyFrames(Context context, XmlPullParser parser) {
        Key key;
        Exception e4;
        Constructor<? extends Key> constructor;
        HashMap<String, ConstraintAttribute> hashMap;
        HashMap<String, ConstraintAttribute> hashMap2;
        Key key2 = null;
        try {
            int eventType = parser.getEventType();
            while (eventType != 1) {
                if (eventType != 2) {
                    if (eventType == 3 && ViewTransition.KEY_FRAME_SET_TAG.equals(parser.getName())) {
                        return;
                    }
                } else {
                    String name = parser.getName();
                    if (sKeyMakers.containsKey(name)) {
                        try {
                            constructor = sKeyMakers.get(name);
                        } catch (Exception e10) {
                            key = key2;
                            e4 = e10;
                        }
                        if (constructor != null) {
                            key = constructor.newInstance(new Object[0]);
                            try {
                                key.load(context, Xml.asAttributeSet(parser));
                                addKey(key);
                            } catch (Exception e11) {
                                e4 = e11;
                                Log.e(TAG, "unable to create ", e4);
                                key2 = key;
                                continue;
                                eventType = parser.next();
                            }
                            key2 = key;
                            continue;
                        } else {
                            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 23);
                            sb.append("Keymaker for ");
                            sb.append(name);
                            sb.append(" not found");
                            throw new NullPointerException(sb.toString());
                            break;
                        }
                    } else if (name.equalsIgnoreCase("CustomAttribute")) {
                        if (key2 != null && (hashMap2 = key2.mCustomConstraints) != null) {
                            ConstraintAttribute.parse(context, parser, hashMap2);
                            continue;
                        }
                    } else if (name.equalsIgnoreCase("CustomMethod") && key2 != null && (hashMap = key2.mCustomConstraints) != null) {
                        ConstraintAttribute.parse(context, parser, hashMap);
                        continue;
                    }
                }
                eventType = parser.next();
            }
        } catch (IOException e12) {
            e12.printStackTrace();
        } catch (XmlPullParserException e13) {
            e13.printStackTrace();
        }
    }
}
