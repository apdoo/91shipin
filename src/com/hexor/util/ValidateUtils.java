package com.hexor.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @version 1.0
 * @author wiker
 * @since JDK 1.6
 **/
public class ValidateUtils {
	/** ����  */
	private static final String  V_INTEGER="^-?[1-9]\\d*$";

    /**  ������ */
    private static final String V_Z_INDEX="^[1-9]\\d*$";

    /**������ */
    private static final String V_NEGATIVE_INTEGER="^-[1-9]\\d*$";

    /** ���� */
    private static final String V_NUMBER="^([+-]?)\\d*\\.?\\d+$";

    /**���� */
  	private static final String V_POSITIVE_NUMBER="^[1-9]\\d*|0$";

    /** ���� */
  	private static final String V_NEGATINE_NUMBER="^-[1-9]\\d*|0$";

    /** ������ */
  	private static final String V_FLOAT="^([+-]?)\\d*\\.\\d+$";

    /** �������� */
  	private static final String V_POSTTIVE_FLOAT="^[1-9]\\d*.\\d*|0.\\d*[1-9]\\d*$";

    /** �������� */
  	private static final String V_NEGATIVE_FLOAT="^-([1-9]\\d*.\\d*|0.\\d*[1-9]\\d*)$";

    /** �Ǹ����������������� + 0�� */
  	private static final String V_UNPOSITIVE_FLOAT="^[1-9]\\d*.\\d*|0.\\d*[1-9]\\d*|0?.0+|0$";

    /** �������������������� + 0�� */
  	private static final String V_UN_NEGATIVE_FLOAT="^(-([1-9]\\d*.\\d*|0.\\d*[1-9]\\d*))|0?.0+|0$";

    /** �ʼ� */
  	private static final String V_EMAIL="^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$";

    /** ��ɫ */
  	private static final String V_COLOR="^[a-fA-F0-9]{6}$";

    /** url */
  	private static final String V_URL="^http[s]?:\\/\\/([\\w-]+\\.)+[\\w-]+([\\w-./?%&=]*)?$";

    /** ������ */
  	private static final String V_CHINESE="^[\\u4E00-\\u9FA5\\uF900-\\uFA2D]+$";

    /** ��ACSII�ַ� */
  	private static final String V_ASCII="^[\\x00-\\xFF]+$";

    /** �ʱ� */
  	private static final String V_ZIPCODE="^\\d{6}$";

    /** �ֻ� */
  	private static final String V_MOBILE="^(1)[0-9]{10}$";

    /** ip��ַ */
  	private static final String V_IP4="^(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)\\.(25[0-5]|2[0-4]\\d|[0-1]\\d{2}|[1-9]?\\d)$";

    /** �ǿ� */
  	private static final String V_NOTEMPTY="^\\S+$";

    /** ͼƬ  */
  	private static final String V_PICTURE="(.*)\\.(jpg|bmp|gif|ico|pcx|jpeg|tif|png|raw|tga)$";

    /**  ѹ���ļ�  */
  	private static final String V_RAR="(.*)\\.(rar|zip|7zip|tgz)$";

    /** ���� */
  	private static final String V_DATE="^((((1[6-9]|[2-9]\\d)\\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\\d|3[01]))|(((1[6-9]|[2-9]\\d)\\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\\d|30))|(((1[6-9]|[2-9]\\d)\\d{2})-0?2-(0?[1-9]|1\\d|2[0-8]))|(((1[6-9]|[2-9]\\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-)) (20|21|22|23|[0-1]?\\d):[0-5]?\\d:[0-5]?\\d$";

    /** QQ����  */
  	private static final String V_QQ_NUMBER="^[1-9]*[1-9][0-9]*$";

    /** �绰����ĺ���(������֤��������,��������,�ֻ���) */
  	private static final String V_TEL="^(([0\\+]\\d{2,3}-)?(0\\d{2,3})-)?(\\d{7,8})(-(\\d{3,}))?$";

    /** �����û�ע�ᡣƥ�������֡�26��Ӣ����ĸ�����»�����ɵ��ַ��� */
  	private static final String V_USERNAME="^\\w+$";

    /** ��ĸ */
  	private static final String V_LETTER="^[A-Za-z]+$";

    /** ��д��ĸ  */
  	private static final String V_LETTER_U="^[A-Z]+$";

    /** Сд��ĸ */
  	private static final String V_LETTER_I="^[a-z]+$";

	/** ���֤  */
  	private static final String V_IDCARD ="^(\\d{15}$|^\\d{18}$|^\\d{17}(\\d|X|x))$";

  	/**��֤����(���ֺ�Ӣ��ͬʱ����)*/
  	private static final String V_PASSWORD_REG="[A-Za-z]+[0-9]";

  	/**��֤���볤��(6-18λ)*/
  	private static final String V_PASSWORD_LENGTH="^\\d{6,18}$";

  	/**��֤��λ��*/
  	private static final String V_TWO��POINT="^[0-9]+(.[0-9]{2})?$";

  	/**��֤һ���µ�31��*/
  	private static final String V_31DAYS="^((0?[1-9])|((1|2)[0-9])|30|31)$";

  	
  	private ValidateUtils(){}
  	
  	
  	/**
  	 * ��֤�ǲ�������
  	 * @param value Ҫ��֤���ַ��� Ҫ��֤���ַ���
  	 * @return  ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
  	 */
  	public static boolean Integer(String value){
  		return match(V_INTEGER,value);
  	}

  	/**
  	 * ��֤�ǲ���������
  	 * @param value Ҫ��֤���ַ���
  	 * @return  ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
  	 */
  	public static boolean Z_index(String value){
  		return match(V_Z_INDEX,value);
  	}

  	/**
  	 * ��֤�ǲ��Ǹ�����
  	 * @param value Ҫ��֤���ַ���
  	 * @return  ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
  	 */
	public static boolean Negative_integer(String value){
  		return match(V_NEGATIVE_INTEGER,value);
  	}

	/**
	 * ��֤�ǲ�������
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Number(String value){
		return match(V_NUMBER,value);
	}

	/**
	 * ��֤�ǲ�������
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean PositiveNumber(String value){
		return match(V_POSITIVE_NUMBER,value);
	}

	/**
	 * ��֤�ǲ��Ǹ���
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean NegatineNumber(String value){
		return match(V_NEGATINE_NUMBER,value);
	}

	/**
	 * ��֤һ���µ�31��
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Is31Days(String value){
		return match(V_31DAYS,value);
	}

	/**
	 * ��֤�ǲ���ASCII
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean ASCII(String value){
		return match(V_ASCII,value);
	}


	/**
	 * ��֤�ǲ�������
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Chinese(String value){
		return match(V_CHINESE,value);
	}



	/**
	 * ��֤�ǲ�����ɫ
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Color(String value){
		return match(V_COLOR,value);
	}



	/**
	 * ��֤�ǲ�������
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Date(String value){
		return match(V_DATE,value);
	}

	/**
	 * ��֤�ǲ��������ַ
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Email(String value){
		return match(V_EMAIL,value);
	}

	/**
	 * ��֤�ǲ��Ǹ�����
	 * @param value Ҫ��֤���ַ���
	 * @return  ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Float(String value){
		return match(V_FLOAT,value);
	}

	/**
	 * ��֤�ǲ�����ȷ�����֤����
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean IDcard(String value){
		return match(V_IDCARD,value);
	}

	/**
	 * ��֤�ǲ�����ȷ��IP��ַ
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean IP4(String value){
		return match(V_IP4,value);
	}

	/**
	 * ��֤�ǲ�����ĸ
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Letter(String value){
		return match(V_LETTER,value);
	}

	/**
	 * ��֤�ǲ���Сд��ĸ
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Letter_i(String value){
		return match(V_LETTER_I,value);
	}


	/**
	 * ��֤�ǲ��Ǵ�д��ĸ
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Letter_u(String value){
		return match(V_LETTER_U,value);
	}


	/**
	 * ��֤�ǲ����ֻ�����
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Mobile(String value){
		return match(V_MOBILE,value);
	}

	/**
	 * ��֤�ǲ��Ǹ�������
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Negative_float(String value){
		return match(V_NEGATIVE_FLOAT,value);
	}

	/**
	 * ��֤�ǿ�
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Notempty(String value){
		return match(V_NOTEMPTY,value);
	}

	/**
	 * ��֤����ĳ���(6~18λ)
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Number_length(String value){
		return match(V_PASSWORD_LENGTH,value);
	}

	/**
	 * ��֤����(���ֺ�Ӣ��ͬʱ����)
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Password_reg(String value){
		return match(V_PASSWORD_REG,value);
	}

	/**
	 * ��֤ͼƬ
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Picture(String value){
		return match(V_PICTURE,value);
	}

	/**
	 * ��֤��������
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Posttive_float(String value){
		return match(V_POSTTIVE_FLOAT,value);
	}

	/**
	 * ��֤QQ����
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean QQnumber(String value){
		return match(V_QQ_NUMBER,value);
	}

	/**
	 * ��֤ѹ���ļ�
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Rar(String value){
		return match(V_RAR,value);
	}

	/**
	 * ��֤�绰
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Tel(String value){
		return match(V_TEL,value);
	}

	/**
	 * ��֤��λС��
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Two_point(String value){
		return match(V_TWO��POINT,value);
	}

	/**
	 * ��֤����������
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Un_negative_float(String value){
		return match(V_UN_NEGATIVE_FLOAT,value);
	}

	/**
	 * ��֤�Ǹ�������
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Unpositive_float(String value){
		return match(V_UNPOSITIVE_FLOAT,value);
	}

	/**
	 * ��֤URL
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Url(String value){
		return match(V_URL,value);
	}

	/**
	 * ��֤�û�ע�ᡣƥ�������֡�26��Ӣ����ĸ�����»�����ɵ��ַ���
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean UserName(String value){
		return match(V_USERNAME,value);
	}

	/**
	 * ��֤�ʱ�
	 * @param value Ҫ��֤���ַ���
	 * @return ����Ƿ��ϸ�ʽ���ַ���,���� <b>true </b>,����Ϊ <b>false </b>
	 */
	public static boolean Zipcode(String value){
		return match(V_ZIPCODE,value);
	}

  	 /**
     * @param regex ������ʽ�ַ���
     * @param str Ҫƥ����ַ���
     * @return ���str ���� regex��������ʽ��ʽ,����true, ���򷵻� false;
     */
    private static boolean match(String regex, String str)
    {
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(str);
        return matcher.matches();
    }
}
